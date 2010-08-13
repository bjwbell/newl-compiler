module CodeGen where
import TypeNames
import Data.Word
import Data.Int(Int32)
import Data.Typeable as T
import Foreign.C.String as CS
import System.IO.Unsafe
import LLVM.FFI.Core as FFI
import LLVM.Core.Util as U

codeGen :: Program -> IO String
codeGen (Program mainClass classDeclList) = codeGenClassDeclList classDeclList
-- if codeGenMainClass mainClass classes == "Ok" 
-- then codeGenClassDeclList classDeclList classes
-- else "Fail1" ++ " " ++ (codeGenMainClass mainClass classes)

codeGenClassDeclList :: ClassDeclList -> IO String
codeGenClassDeclList CEmpty = return "Ok"
codeGenClassDeclList (ClassDeclList classDecl classDeclList)  = 
    do
      result <- codeGenClassDecl classDecl
      if result /= "Ok"
        then return "fail: codeGenClassDeclList"
        else codeGenClassDeclList classDeclList
      return "Ok"

codeGenClassDecl :: ClassDecl -> IO String
codeGenClassDecl (ClassDecl className varDeclList methodDeclList) = 
    do
      m <- U.createModule className
      codeGenMethodDeclList methodDeclList m [("this", className)]

codeGenMethodDeclList :: MethodDeclList -> U.Module -> [(String, String)] -> IO String 
codeGenMethodDeclList MEmpty m context = return "Ok" -- no methods so automatically successful
codeGenMethodDeclList (MethodDeclList methodDecl methodDeclList) m context =
    do
      result <- codeGenMethodDecl methodDecl m context
      if result /= "Ok"
        then return "fail: codeGenMethodDeclList"
        else codeGenMethodDeclList methodDeclList m context


getLLVMType :: TypeNames.Type -> FFI.TypeRef
getLLVMType TypeInt = FFI.int64Type
getLLVMType TypeBool = int1Type
getLLVMType _ = error("Unimplemented type")

getArgTypes :: FormalList -> [FFI.TypeRef]
getArgTypes FEmpty = []
getArgTypes (FormalList theType ident FEmpty) = [(getLLVMType theType)]
getArgTypes (FormalList theType ident rest) =
    [(getLLVMType theType)] ++ (getArgTypes rest) 

codeGenMethodDecl :: MethodDecl -> U.Module -> [(String, String)] -> IO String
codeGenMethodDecl (MethodDecl theType methodName formalList varDeclList statementList exp) m context = do
  let methodType = U.functionType False (getLLVMType theType) (getArgTypes formalList)
  method <- U.addFunction m FFI.ExternalLinkage methodName methodType
  bld <- U.createBuilder
  entry <- U.appendBasicBlock method "entry"
  U.positionAtEnd bld entry
  withBuilder bld $ \bldRef ->
      do
        expVal <- codeGenExp exp bld context
        FFI.buildRet bldRef expVal 
  FFI.dumpValue entry
  return "Ok"

codeGenExp :: Exp -> U.Builder -> [(String, String)] -> IO FFI.ValueRef
codeGenExp (ExpOp exp1 char exp2) bld context = 
    do
      val1 <- codeGenExp exp1 bld context
      val2 <- codeGenExp exp2 bld context
      case char of 
        '+' -> U.withBuilder bld $ \ bldRef ->
               withCString "" $ \ cString -> buildAdd bldRef val1 val2 cString
        '-' -> U.withBuilder bld $ \ bldRef ->
               withCString "" $ \ cString -> buildAdd bldRef val1 val2 cString
        '*' -> U.withBuilder bld $ \ bldRef ->
               withCString "" $ \ cString -> buildAdd bldRef val1 val2 cString
        '/' -> U.withBuilder bld $ \ bldRef ->
               withCString "" $ \ cString -> buildAdd bldRef val1 val2 cString
        _ -> error ("Unrecognized operator, " ++ (show char) ++ " in ExpOp")

codeGenExp (ExpInt value) bld context = 
    do
      return (constInt int64Type (fromIntegral value) (fromIntegral 64)) 


codeGenExp (ExpBool True) bld context = 
    do
      return (constInt int1Type (fromIntegral 1) (fromIntegral 1)) 
codeGenExp (ExpBool False) bld context = 
    do
      return (constInt int1Type (fromIntegral 0) (fromIntegral 1)) 
