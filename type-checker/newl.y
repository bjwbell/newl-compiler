{
module Main where
import Scanner
-- Notes
--1. Arrays are not implemented. So please dont use them.
--2. The array of arguments passed to main is not implemented.
--3. Object inheritance is not implemented.
--4. Type checking doesn't work with methods of more than 2 arguments
}


%name newl
%tokentype { Token }
%error { parseError }
%monad { E } { thenE } { returnE }
%token
  "class"				{ TClass }
  "new"					{ TNew }
  "String"				{ TString }
  "static"				{ TStatic }
  "void"				{ TVoid }
  "main"				{ TMain }
  "public"				{ TPublic }
  "return"                              { TReturn }
  "extends"				{ TExtend }
  "int"				        { TInt }
  "boolean"				{ TBool }
  "if"				        { TIf }
  "else"				{ TElse }
  "true"				{ TTrue }
  "false"				{ TFalse }
  "this"				{ TThis }
  "length"				{ TLength }
  "while"				{ TWhile }
  integer_literal			{ TIntLiteral $$ }
  ident		                        { TIdent $$ }
  "{"	 	 	   		{ TLeftBrace }
  "}"					{ TRightBrace }
  ","					{ TComma }
  "["					{ TLeftBrack }
  "]"					{ TRightBrack }
  op                                    { TOp $$}
  comop                                 { TComOp $$ }
  "("                                   { TLeftParen }
  ")"                                   { TRightParen }
  ";"                                   { TSemiColon }
  "."                                   { TPeriod }
  "!"                                   { TNot }
  "="                                   { TEquals }
  "System.out.println"                  { TPrint }
%%

Program : 
        MainClass ClassDeclList { Program $1 $2 }
MainClass : 
          "class" ident "{" "public" "static" "void" "main" "(" "String" "[" "]" ident ")" "{" Statement "}" "}" { MClass $2 $12 $15 }
--          | error {% failE ("Error parsing MainClass")}


ClassDeclList :
          ClassDecl     { ClassDeclList $1 CEmpty }
          | ClassDecl ClassDeclList { ClassDeclList $1 $2 }
          |             { CEmpty }
--          | error {% failE "Error parsing Classes"}

ClassDecl : 
          "class" ident "{" VarDeclList MethodDeclList "}"                     { ClassDecl $2 "void" $4 $5 }
          | "class" ident "extends" ident "{" VarDeclList MethodDeclList "}"   { ClassDecl $2 $4 $6 $7 }
--          | error {% failE "Error parsing ClassDecl"}


MethodDeclList :
     MethodDecl                   { MethodDeclList $1 MEmpty }
     | MethodDecl MethodDeclList  { MethodDeclList $1 $2 }
     |                            { MEmpty }
--     | error {% failE "Error parsing MethodDeclList"}

MethodDecl : 
     "public" Type ident "(" FormalList ")" "{" VarDeclList StatementList "return" Exp ";" "}" { MethodDecl $2 $3 $5 $8 $9 $11 }
--     | error {% failE "Error parsing MethodDecl"}

VarDeclList :
     Type ident ";" { VarDeclList $1 $2 VEmpty }
     | Type ident ";" VarDeclList { VarDeclList $1 $2 $4 }
     |              { VEmpty }
--     | error {% failE "Error parsing VarDeclList"}

FormalList :
     Type ident       { FormalList $1 $2 FEmpty }
     | Type ident FormalList { FormalList $1 $2 $3 }
--     | error {% failE "Error parsing FormalList"}

Type :
     "int" "[" "]"    { TypeIntArray }
     | "boolean"      { TypeBoolean }
     | "int"          { TypeInt }
     | ident          { TypeIdent $1 }
--     | error {% failE "Error parsing Type"}

Statement :
    "{" StatementList "}"                            { SList $2 }
    | "if" "(" Exp ")" Statement "else" Statement  { SIfElse $3 $5 $7 }
    | "while" "(" Exp ")" Statement                { SWhile $3 $5 }
    | "System.out.println" "(" Exp ")" ";"         { SPrint $3 }
    | ident "=" Exp ";"                              { SEqual $1 $3 }
    | ident "[" Exp "]" "=" Exp ";"                  { SArrayEqual $1 $3 $6 }
--    | error                                         {% failE "Error parsing statement" }

StatementList :
    Statement               { StatementList Empty $1 }
    | StatementList Statement   { StatementList $1 $2 }
--    | error {% failE "Error parsing StatementList"}

Exp : 
    Exp op Exp                        { ExpOp $1 $2 $3}
    | Exp comop Exp                   { ExpComOp $1 $2 $3}
    | Exp "[" Exp "]"                 { ExpArray $1 $3}
    | Exp "." "length"                { ExpLength $1}
    | Exp "." ident "(" ExpList ")"   { ExpFCall $1 $3 $5}
    | integer_literal                 { ExpInt $1}
    | "true"                          { ExpBool True}
    | "false"                         { ExpBool False}
    | ident                           { ExpIdent $1}
    | "this"                          { ExpThis }
    | "new" "int" "[" Exp "]"         { ExpNewInt $4 }  
    | "new" ident "(" ")"             { ExpNewIdent $2}
    | "!" Exp                         { ExpNot $2}
    | "(" Exp ")"                     { ExpExp $2}
--    | error                           {% failE "Error parsing expression" }

ExpList :
        Exp            { ExpListExp $1 }
        | Exp ExpRest  { ExpList $1 $2 }
        |              { ExpListEmpty }
--        | error {% failE "Error parsing Expression List"}

ExpRest : 
     "," Exp      { ExpRest $2 }
--     | error {% failE "Error parsing Expression List"}

{

data E a = ParseOk a 
  | ParseFailed String
  deriving Show

thenE :: E a -> (a -> E b) -> E b
m `thenE` k = 
   case m of 
       ParseOk a -> k a
       ParseFailed e -> ParseFailed e

returnE :: a -> E a
returnE a = ParseOk a

failE :: String -> E a
failE err = ParseFailed err

catchE :: E a -> (String -> E a) -> E a
catchE m k = 
   case m of
      ParseOk a -> ParseOk a
      ParseFailed e -> k e

parseError :: [Token] -> E a
parseError tokens = failE ("Parse error on token "  ++ (show (head tokens)))

data Program 
    = Program MainClass ClassDeclList
      deriving (Show, Eq)



data MainClass
    = MClass String String Statement
      deriving (Show, Eq)

data ClassDeclList
    = ClassDeclList ClassDecl ClassDeclList
    | CEmpty
  deriving (Show, Eq)

data ClassDecl = ClassDecl Ident Ident VarDeclList MethodDeclList
  deriving (Show, Eq)


data MethodDeclList
    = MethodDeclList MethodDecl MethodDeclList
    | MEmpty
    deriving (Show, Eq)
data MethodDecl
    = MethodDecl Type Ident FormalList VarDeclList StatementList Exp
    deriving (Show, Eq)

data VarDeclList =
    VarDeclList Type Ident VarDeclList
    | VEmpty
    deriving (Show, Eq)

data FormalList = 
    FormalList Type Ident FormalList
    | FEmpty
  deriving (Show, Eq)

data Type =
    TypeIntArray
    | TypeBoolean
    | TypeInt
    | TypeIdent Ident
    deriving (Show, Eq)

data Statement
    = Statement String
    | SList StatementList
    | SIfElse Exp Statement Statement
    | SWhile Exp Statement
    | SPrint Exp
    | SEqual Ident Exp
    | SArrayEqual Ident Exp Exp
    | StatementError
    deriving (Show, Eq)

data StatementList
    = StatementList StatementList Statement 
    | Empty
    deriving (Show, Eq)


data Exp
    = Exp String
    | ExpOp Exp Char Exp
    | ExpComOp Exp Char Exp
    | ExpArray Exp Exp -- "Exp [ Exp ]"
    | ExpFCall Exp Ident ExpList -- Exp . Ident ( ExpList )
    | ExpInt Int
    | ExpNewInt Exp
    | ExpBool Bool -- True or False
    | ExpIdent Ident
    | ExpNewIdent Ident -- new Ident ()
    | ExpExp Exp -- Exp ( Exp )
    | ExpThis
    | ExpNot Exp
    | ExpLength Exp
    | ExpError
    deriving (Show, Eq)

data Op
     = And
     | LessThan
     | Plus
     | Minus
     | Times
     deriving (Show, Eq)

type Ident = String
type Integer_Literal = Int
data ExpList
    = ExpList Exp ExpRest
    | ExpListEmpty
    | ExpListExp Exp
    deriving (Show, Eq)
data ExpRest
    = ExpRest Exp
    deriving (Show, Eq)


data Symbol 
    = ClassSymbol 
      {
--          name            :: String -- variable name if available
          className       :: String -- class name
        , publicVariables :: [(String, String)] -- (variable name, variable type name) list of variable
        , methods         :: [(String, MethodSymbol)] -- (method name, method symbol) list of methods
      }
      deriving (Eq)

instance Show Symbol where 
    show (ClassSymbol cName vars methods) = show cName
--    show (IntSymbol name2) = show name2
--    show (BoolSymbol name3) = show name3

--data MethodSymbol = MethodSymbol String String [String] -- return type, name, type names of the params
    
data MethodSymbol = MethodSymbol {
      returnType :: String
    , name       :: String
    , args       :: [String] -- list of argument type names
    } 
                    deriving (Show, Eq)
-- String String [String] -- return type, name, types names of the params

classSymbols (ParseFailed _) = error("Parse Failed, aborting semantic analysis")

classSymbols (ParseOk (Program mainClass classDeclList)) = classSymbolsMainClass mainClass : classSymbolscl classDeclList 

classSymbolsMainClass (MClass className paramName statement) = 
    (className, (ClassSymbol className [] []))
classSymbolsc (ClassDecl className parentClassName varDecls methodDecls) = (className, (ClassSymbol className  (varSymbols varDecls) (methodSymbols methodDecls)))
classSymbolscl (ClassDeclList classDecl classDeclList) = classSymbolsc classDecl : classSymbolscl classDeclList
classSymbolscl (CEmpty) = []

varSymbols VEmpty = []
varSymbols (VarDeclList theType ident varDeclList) = varSymbol theType ident : varSymbols varDeclList

varSymbol (TypeIntArray) ident = (ident, "int[]")
varSymbol (TypeBoolean) ident = (ident, "boolean")
varSymbol (TypeInt) ident = (ident, "int")
varSymbol (TypeIdent identType) ident = (ident, identType)


methodSymbols MEmpty = []
methodSymbols (MethodDeclList methodDecl methodDeclList) = methodSymbol methodDecl : methodSymbols methodDeclList

methodSymbol (MethodDecl theType ident formalList varDeclList statementList exp)
             = case theType of
                     TypeIntArray -> (ident, MethodSymbol { returnType = "int[]", name = ident, args = (argSymbols formalList)})
                     TypeBoolean -> (ident, MethodSymbol { returnType = "boolean", name = ident, args = (argSymbols formalList)})
                     TypeInt -> (ident, MethodSymbol { returnType = "int", name = ident, args = (argSymbols formalList)})
                     TypeIdent classType -> (ident, MethodSymbol { returnType = classType, name = ident, args = (argSymbols formalList)})

               

argSymbols FEmpty = []
argSymbols (FormalList theType ident formalList) = 
    case theType of
      TypeIntArray -> "int[]" : argSymbols formalList
      TypeBoolean -> "boolean" : argSymbols formalList
      TypeInt -> "int" : argSymbols formalList
      TypeIdent classType -> classType : argSymbols formalList


semanticAnalysis (ParseOk (Program mainClass classDeclList)) classes = do 
  semanticAnalysisMainClass mainClass classes
  semanticAnalysisClassDeclList classDeclList classes

semanticAnalysisClassDeclList CEmpty classes = "Success"
semanticAnalysisClassDeclList (ClassDeclList classDecl classDeclList) classes = 
    do 
      semanticAnalysisClassDecl classDecl classes
      semanticAnalysisClassDeclList classDeclList classes
 
semanticAnalysisClassDecl (ClassDecl className parentClassName varDeclList methodDeclList) classes =
    do
      semanticAnalysisVarDeclList varDeclList classes [("this", className)]
      semanticAnalysisMethodDeclList methodDeclList classes [("this", className)]

semanticAnalysisVarDeclList VEmpty _ _ = "Success" -- empty variable declaration list so automatically successful

semanticAnalysisVarDeclList (VarDeclList theType ident varDeclList) classes context =
    do 
      semanticAnalysisVarDecl theType ident classes context 
      semanticAnalysisVarDeclList varDeclList classes context

getTypeName TypeIntArray = "int[]"
getTypeName TypeBoolean = "boolean"
getTypeName TypeInt = "int"
getTypeName (TypeIdent ident) = ident


semanticAnalysisVarDecl theType ident classes context = 
    let typeName = getTypeName theType
    in
      case lookup typeName classes of
        Just classSym -> if className classSym == typeName
                         then "Success"
                         else error ("Type mismatch for identifier " ++ ident ++ " in the var declaration list of class " ++ (show (lookup "this" context)) ++ ", did you declare the identifier twice? ")

        Nothing -> error ("Unknown type " ++ typeName ++ " in the var declaration list of class " ++ (show (lookup "this" context)))


semanticAnalysisMethodDeclList MEmpty classes context = "Success" -- no methods so automatically successful
semanticAnalysisMethodDeclList (MethodDeclList methodDecl methodDeclList) classes context =
    do
      semanticAnalysisMethodDecl methodDecl classes context
      semanticAnalysisMethodDeclList methodDeclList classes context

semanticAnalysisMethodDecl (MethodDecl theType methodName formalList varDeclList statementList exp) classes context =    
    let context2 = (classVarTypes classes context) ++ (varDeclListTypes varDeclList classes) ++ (formalListTypes formalList classes) ++ context
        typeName = getTypeName theType
    in
      do
        semanticAnalysisStatementList statementList classes context2 
        if typeName /=  (semanticAnalysisExp exp classes context2)
           then error ("the type of method " ++ methodName ++ " does not match the return type of " ++ (show exp))
           else "Success"

classVarTypes classes context =
    case lookup "this" context of
      Nothing -> error("undeclared this in context: " ++ show context)
      Just thisTypeName -> cVarTypes thisTypeName classes

cVarTypes typeName classes = 
    case lookup typeName classes of
      Nothing -> error("undeclared type: " ++ typeName)
      Just classSym -> publicVariables classSym

varDeclListTypes VEmpty _ = [] -- empty variable declaration list

varDeclListTypes (VarDeclList theType ident varDeclList) classes = 
    let typeName = getTypeName theType 
    in 
      if lookup typeName classes == Nothing
      then error("unknown type " ++ typeName ++ " for variable " ++ ident)
      else (ident, getTypeName theType) : varDeclListTypes varDeclList classes


formalListTypes FEmpty classes = []
formalListTypes (FormalList theType ident formalList) classes = 
    let typeName = getTypeName theType
    in
      if lookup typeName classes == Nothing
      then error("unknown type " ++ typeName ++ " for variable " ++ ident)
      else (ident, getTypeName theType) : formalListTypes formalList classes
    

semanticAnalysisMainClass (MClass className paramName statement) classes = do
  if lookup className classes == Nothing
      then error ("Error " ++ className ++ " is not a declared class")
      else semanticAnalysisStatement statement classes [("this", className)]

semanticAnalysisStatementList Empty classes context = "Success"
semanticAnalysisStatementList (StatementList statementList statement) classes context =
    do
      semanticAnalysisStatementList statementList classes context
      semanticAnalysisStatement statement classes context



semanticAnalysisStatement (Statement string) classes context = "Success" -- dont know what Statement string is from, so defaulting to success
semanticAnalysisStatement (SList statementList) classes context = 
    semanticAnalysisStatementList statementList classes context
semanticAnalysisStatement (SIfElse exp1 statement1 statement2) classes context =
    if (semanticAnalysisExp exp1 classes context) /= "dummytypename" && semanticAnalysisStatement statement1 classes context == "Success" && semanticAnalysisStatement statement2 classes context == "Success"
    then "Success"
    else error ("Error in If Else Statement")

semanticAnalysisStatement (SWhile exp statement) classes context = 
      if semanticAnalysisExp exp classes context == "boolean" 
      then semanticAnalysisStatement statement classes context
      else error ("Error type of " ++ show(exp) ++ " is not boolean in while statement")


semanticAnalysisStatement (SEqual ident exp1) classes context = 
    let identType = lookup ident context in
    case identType of 
         Nothing -> error("Error undeclared identifier " ++ ident ++ " in equal statement")
         Just iType -> if iType == semanticAnalysisExp exp1 classes context
                     then "Success"
                     else error("Error types do not match in equals statements, type1 " ++ iType ++ " type2 " ++ (semanticAnalysisExp exp1 classes context))


semanticAnalysisStatement (SPrint exp) classes context = semanticAnalysisExp exp classes context
--    "Success"

--    "Success"
semanticAnalysisStatement (SArrayEqual ident exp1 exp2) classes context = "Success"


-- some helper functions for semanticAnalysisExp

expTypes ExpListEmpty classes context = []
expTypes (ExpList exp expRest) classes context = (semanticAnalysisExp exp classes context) : expRestTypes expRest classes context
expTypes (ExpListExp exp) classes context = [semanticAnalysisExp exp classes context]
    
expRestTypes (ExpRest exp) classes context = [semanticAnalysisExp exp classes context]
        

checkFunctionCall (ClassSymbol cName vars []) methodName [] = 
    error (methodName ++ " is not a method of class " ++ cName)

checkFunctionCall (ClassSymbol cName var methods) methodName methodTypes = 
    let method = lookup methodName methods in
    case method of 
         Just theMethod -> checkMethodTypes theMethod methodTypes
         Nothing -> error (methodName ++ " is not a method of " ++ cName)

checkMethodTypes (MethodSymbol returnType name []) [] = returnType

checkMethodTypes (MethodSymbol returnType name []) methodTypes = error("method " ++ name ++ " doesn't take any arguments but arguments of type " ++ show(methodTypes) ++ " provided")

checkMethodTypes (MethodSymbol returnType name args) [] = error("method " ++ name ++ " takes arguments but no arguments provided")
 
checkMethodTypes (MethodSymbol returnType name (arg : args)) (type1 : types)  = 
    if arg == type1 
    then checkMethodTypes (MethodSymbol returnType name args) types 
    else error ("method " ++ name ++ " argument type mismatch " ++ " expected type " ++ arg ++ " but got type " ++ type1)




-- the semanticAnalysisExp return the type name of the expression
semanticAnalysisExp (Exp string) classes context = "Success" -- wtf is this?

semanticAnalysisExp (ExpOp exp1 char exp2) classes context = 
    if semanticAnalysisExp exp1 classes context == "int" && semanticAnalysisExp exp2 classes context == "int"
       then "int"
       else error ("one of the expressions exp1:" ++ show(exp1) ++ " exp2:" ++ show(exp2) ++ " is not an integer \n exp1 type: " ++ (semanticAnalysisExp exp1 classes context) ++ "\n exp2 type: " ++ (semanticAnalysisExp exp2 classes context))


semanticAnalysisExp (ExpComOp exp1 char exp2) classes context = 
    if semanticAnalysisExp exp1 classes context == "int" && semanticAnalysisExp exp2 classes context == "int"
       then "bool"
       else error ("one of the expressions exp1:" ++ show(exp1) ++ " exp2:" ++ show(exp2) ++ " is not an integer \n exp1 type: " ++ (semanticAnalysisExp exp1 classes context) ++ "\n exp2 type: " ++ (semanticAnalysisExp exp2 classes context))


semanticAnalysisExp (ExpArray exp1 exp2) classes context  = "not implemented" -- "Exp [ Exp ]"

semanticAnalysisExp (ExpFCall exp ident expList) classes context =   
      let className = semanticAnalysisExp exp classes context -- Exp . Ident ( ExpList )
          classSym = lookup className classes
          expListTypes = expTypes expList classes context 
      in case classSym of
           Just x -> (checkFunctionCall x ident expListTypes)
           Nothing -> error ("Undeclared class " ++ className ++ " in function call")

semanticAnalysisExp (ExpInt int) classes context = "int"

semanticAnalysisExp (ExpNewInt exp) classes context = 
    if semanticAnalysisExp exp classes context == "int"
       then "int"
       else error ("Error new int[exp] the expression is not of an integer")

semanticAnalysisExp (ExpBool bool) classes context  = "boolean" -- True or False


semanticAnalysisExp (ExpIdent ident) classes context = 
    case lookup ident context of
      Just x -> x
      Nothing -> error ("Error " ++ ident ++ " is not a declared variable, context " ++ show context)
                                                       
semanticAnalysisExp (ExpNewIdent ident) classes context = 
    if lookup ident classes == Nothing
    then error ("Error " ++ ident ++ " is not a declared class" ++ ", context " ++ show context)
    else ident

semanticAnalysisExp (ExpExp exp) classes context  = semanticAnalysisExp exp classes context -- Exp ( Exp )

semanticAnalysisExp (ExpThis) classes context =
    let thisSym = lookup "this" context in
    case thisSym of 
      Just sym -> sym
      Nothing -> error ("this symbol undeclared")

semanticAnalysisExp (ExpNot exp) classes context = 
    if semanticAnalysisExp exp classes context == "boolean"
       then "boolean"
       else error "wrong type for !exp, expecting type of boolean"

semanticAnalysisExp (ExpLength exp) classes context =
    if semanticAnalysisExp exp classes context == "int[]"
           then "int"
           else error "Error in " ++ show(exp) ++ ".length the expression is not of type int[] "


main = do 
  inStr <- getContents
  let parseTree = newl (alexScanTokens inStr)  
  putStrLn ("parseTree: " ++ show(parseTree))
  let defaultClasses = [("int", ClassSymbol "int" [] []), ("int[]", ClassSymbol "int[]" [] []), ("boolean", ClassSymbol "boolean" [] [])]
  let classes = defaultClasses ++ classSymbols parseTree
  putStrLn "classes " 
  print classes
  putStrLn ""
--  let al = [(1, "one")]
--  let r = lookup 1 al
--  print r
  let sAnalysis = semanticAnalysis parseTree classes
  if head (tail (show sAnalysis)) == 'S'
     then putStrLn "Semantic Analysis Results: Passed"
     else putStrLn ("Semantic Analysis Results: Failed, " ++ (show sAnalysis))

--  putStrLn ("Semantic Analysis Results " ++ [head (show(sAnalysis))])
--  putStrLn "\n"
  print "done"
  --print (symbolTable (parseTree))

}
