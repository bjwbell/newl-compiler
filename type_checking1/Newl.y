{
module Main where
import Scanner
}


%name newl
%tokentype { Token }
%error { parseError }
%token
  "class"				{ TClass _ }
  "new"					{ TNew _ }
  "string"				{ TString _ }
  "static"				{ TStatic _ }
  "void"				{ TVoid _ }
  "main"				{ TMain _ }
  "public"				{ TPublic _ }
  "return"                              { TReturn _ }
  "extends"				{ TExtend _ }
  "int"				        { TInt _ }
  "bool"				{ TBool _ }
  "if"				        { TIf _ }
  "else"				{ TElse _ }
  "true"				{ TTrue _ }
  "false"				{ TFalse _ }
  "this"				{ TThis _ }
  "length"				{ TLength _ }
  "while"				{ TWhile _ }
  integer_literal			{ TIntLiteral _ $$ }
  string_literal                        { TStringLiteral _ $$ }
  ident		                        { TIdent _ $$ }
  ident_array                           { TIdentArray _ $$ }
  "{"	 	 	   		{ TLeftBrace _ }
  "}"					{ TRightBrace _ }
  ","					{ TComma _ }
  "["					{ TLeftBrack _ }
  "]"					{ TRightBrack _ }
  op                                    { TOp _ $$}
  comop                                 { TComOp _ $$ }
  "("                                   { TLeftParen _ }
  ")"                                   { TRightParen _ }
  ";"                                   { TSemiColon _ }
  "."                                   { TPeriod _ }
  "!"                                   { TNot _ }
  "="                                   { TEquals _ }
  "System.out.println"                  { TPrint _ }
%%

Program : 
        MainClass ClassDeclList { Program $1 $2 }
MainClass : 
           "class" ident "{" "public" "static" "void" "main" "(" ident_array ident ")" "{" Statement "}" "}" { if $9 /= "string[]" then error($9 ++ " used in class " ++ $2 ++ " main declaration instead of string[]") else MClass $2 $10 $13 }


ClassDeclList :
          ClassDecl     { ClassDeclList $1 CEmpty }
          | ClassDecl ClassDeclList { ClassDeclList $1 $2 }
          |             { CEmpty }

ClassDecl : 
          "class" ident "{" VarDeclList MethodDeclList "}"     { ClassDecl $2 $4 $5 }


MethodDeclList :
     MethodDecl                   { MethodDeclList $1 MEmpty }
     | MethodDecl MethodDeclList  { MethodDeclList $1 $2 }
     |                            { MEmpty }

MethodDecl : 
     "public" Type ident "(" FormalList ")" "{" VarDeclList StatementList "return" Exp ";" "}" { MethodDecl $2 $3 $5 $8 $9 $11 }

VarDeclList :
     Type ident ";" { VarDeclList $1 $2 VEmpty }
     | Type ident ";" VarDeclList { VarDeclList $1 $2 $4 }
     |              { VEmpty }

FormalList :
     Type ident       { FormalList $1 $2 FEmpty }
     | Type ident FormalList { FormalList $1 $2 $3 }

Type :
     "bool"      { TypeBool }
     | "int"          { TypeInt }
     | "string"       { TypeString }
     | ident          { TypeIdent $1 }
     | ident_array    { TypeIdentArray $1 }

Statement :
    "{" StatementList "}"                            { SList $2 }
    | "if" "(" Exp ")" Statement "else" Statement  { SIfElse $3 $5 $7 }
    | "while" "(" Exp ")" Statement                { SWhile $3 $5 }
    | "System.out.println" "(" Exp ")" ";"         { SPrint $3 }
    | ident "=" Exp ";"                              { SEqual $1 $3 }
    | ident "[" Exp "]" "=" Exp ";"                  { SArrayEqual $1 $3 $6 }

StatementList :
    Statement               { StatementList Empty $1 }
    | StatementList Statement   { StatementList $1 $2 }

Exp : 
    Exp op Exp                        { ExpOp $1 $2 $3}
    | Exp comop Exp                   { ExpComOp $1 $2 $3}
    | Exp "[" Exp "]"                 { ExpArray $1 $3}
    | Exp "." "length"                { ExpLength $1}
    | Exp "." ident "(" ExpList ")"   { ExpFCall $1 $3 $5}
    | integer_literal                 { ExpInt $1}
    | string_literal                  { ExpString $1}
    | "true"                          { ExpBool True}
    | "false"                         { ExpBool False}
    | ident                           { ExpIdent $1}
    | "this"                          { ExpThis }
    | "new" "int" "[" Exp "]"         { ExpNewIntArray $4 }  
    | "new" "bool" "[" Exp "]"     { ExpNewStringArray $4 }  
    | "new" "string" "[" Exp "]"      { ExpNewBoolArray $4 }  
    | "new" ident "[" Exp "]"         { ExpNewIdentArray $2 $4 }  
    | "new" ident "(" ")"             { ExpNewIdent $2}
    | "!" Exp                         { ExpNot $2}
    | "(" Exp ")"                     { ExpExp $2}

ExpList :
        Exp            { ExpListExp $1 }
        | Exp ExpRest  { ExpList $1 $2 }
        |              { ExpListEmpty }

ExpRest : 
     "," Exp      { ExpRest $2 }

{
parseError :: [Token] -> a
parseError tokenList = let pos = tokenPosn(head(tokenList)) 
  in 
  error ("parse error at line " ++ show(getLineNum(pos)) ++ " and column " ++ show(getColumnNum(pos)))


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

data ClassDecl = ClassDecl Ident VarDeclList MethodDeclList
  deriving (Show, Eq)


data MethodDeclList
    = MethodDeclList MethodDecl MethodDeclList
    | MEmpty
    deriving (Show, Eq)
data MethodDecl
    = MethodDecl 
      { methodType :: Type,
        methodName :: Ident, 
        methodFormalList :: FormalList, 
        methodVarDeclList :: VarDeclList,
        methodStatementList :: StatementList,
        methodExp :: Exp
        }
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
    TypeBool
    | TypeInt
    | TypeString
    | TypeIdent Ident
    | TypeIdentArray Ident 
    deriving (Show, Eq)

data Statement
    = SList StatementList
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
    = ExpOp Exp Char Exp
    | ExpComOp Exp Char Exp
    | ExpArray Exp Exp -- "Exp [ Exp ]"
    | ExpFCall Exp Ident ExpList -- Exp . Ident ( ExpList )
    | ExpInt Int
    | ExpString String
    | ExpNewIntArray Exp -- new int [exp]
    | ExpNewBoolArray Exp -- new string [exp]
    | ExpNewStringArray Exp -- new bool [exp]
    | ExpBool Bool -- True or False
    | ExpIdent Ident
    | ExpNewIdent Ident -- new Ident ()
    | ExpNewIdentArray Ident Exp -- new Ident [Exp]
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
data ExpList
    = ExpList Exp ExpRest
    | ExpListEmpty
    | ExpListExp Exp
    deriving (Show, Eq)
data ExpRest
    = ExpRest Exp
    deriving (Show, Eq)

data ClassSymbol
    = ClassSymbol
      {
          className       :: String -- class name
        , publicVariables :: [(String, String)] -- (variable name, variable type name) list of variable
        , methods         :: [(String, MethodSymbol)] -- (method name, method symbol) list of methods
      }
      deriving (Eq)

instance Show ClassSymbol where
    show (ClassSymbol cName vars methods) = show cName

data MethodSymbol = MethodSymbol {
      returnType :: String
    , name       :: String
    , args       :: [(String, String)] -- (argument name, argument type) list of arguments
    }
    deriving (Show, Eq)


classSymbols (Program mainClass classDeclList) = classSymbolMainClass mainClass : classSymbolsClassDeclList classDeclList

classSymbolMainClass (MClass className paramName statement) =
                      (className, (ClassSymbol className [] [
                                                            ("main", 
                                                                    (MethodSymbol {returnType = "void", name = "main", args = [("string[]", paramName)]})
                                                            )]
                                  )
                      )
classSymbolClassDecl (ClassDecl className varDecls methodDecls) = (className, (ClassSymbol className (varSymbols varDecls) (methodSymbols methodDecls)))
classSymbolsClassDeclList (ClassDeclList classDecl classDeclList) = classSymbolClassDecl classDecl : classSymbolsClassDeclList classDeclList
classSymbolsClassDeclList (CEmpty) = []

varSymbols VEmpty = []
varSymbols (VarDeclList theType ident varDeclList) = varSymbol theType ident : varSymbols varDeclList

varSymbol (TypeString) ident = (ident, "string")
varSymbol (TypeBool) ident = (ident, "bool")
varSymbol (TypeInt) ident = (ident, "int")
varSymbol (TypeIdent identType) ident = (ident, identType)
varSymbol (TypeIdentArray identType) ident = (ident, identType)

methodSymbols MEmpty = []
methodSymbols (MethodDeclList methodDecl methodDeclList) = methodSymbol methodDecl : methodSymbols methodDeclList

methodSymbol (MethodDecl theType ident formalList varDeclList statementList exp)
             = case theType of
                    TypeInt -> (ident, MethodSymbol {returnType = "int", name = ident, args = (argSymbols formalList)})
                    TypeBool -> (ident, MethodSymbol {returnType = "bool", name = ident, args = (argSymbols formalList)})
                    TypeString -> (ident, MethodSymbol {returnType = "string", name = ident, args = (argSymbols formalList)})
                    TypeIdent classType -> (ident, MethodSymbol {returnType = classType, name = ident, args = (argSymbols formalList)})
                    TypeIdentArray classType -> (ident, MethodSymbol {returnType = classType, name = ident, args = (argSymbols formalList)})

argSymbols FEmpty = []
argSymbols (FormalList theType ident formalList) =
           case theType of
                TypeInt -> (ident, "int") : argSymbols formalList
                TypeBool -> (ident, "bool") : argSymbols formalList
                TypeString -> (ident, "string") : argSymbols formalList
                TypeIdent classType -> (ident, classType) : argSymbols formalList
                TypeIdentArray classType -> (ident, classType) : argSymbols formalList



typeCheck (Program mainClass classDeclList) classes =  
 if typeCheckMainClass mainClass classes == "Ok" 
 then typeCheckClassDeclList classDeclList classes
 else "Fail1" ++ " " ++ (typeCheckMainClass mainClass classes)

typeCheckClassDeclList CEmpty classes = "Ok"
typeCheckClassDeclList (ClassDeclList classDecl classDeclList) classes = 
  if typeCheckClassDecl classDecl classes  == "Ok"
  then "Ok"
  else typeCheckClassDeclList classDeclList classes 

typeCheckClassDecl (ClassDecl className varDeclList methodDeclList) classes =
    if typeCheckVarDeclList varDeclList classes [("this", className)] == "Ok" 
    then typeCheckMethodDeclList methodDeclList classes [("this", className)]
    else "Fail2"

typeCheckVarDeclList VEmpty _ _ = "Ok" -- empty variable declaration list so automatically successful

typeCheckVarDeclList (VarDeclList theType ident varDeclList) classes context =
    if checkForDuplicateVarDeclarations (VarDeclList theType ident varDeclList) [] context == "Ok" && typeCheckVarDecl theType ident classes context == "Ok" 
    then typeCheckVarDeclList varDeclList classes context
    else "Fail3"

checkForDuplicateVarDeclarations VEmpty vars _ = "Ok"
checkForDuplicateVarDeclarations (VarDeclList theType ident varDeclList) [] context =
  checkForDuplicateVarDeclarations varDeclList [ident] context
checkForDuplicateVarDeclarartions (VarDeclList theType ident varDeclList) vars context =
  case elem ident vars of
    True -> error ("Double declaration of " ++ ident ++ " in " ++ (show (lookup "this" context)))
    False -> checkForDuplicateVarDeclarations varDeclList (ident : vars) context

getTypeName TypeBool = "bool"
getTypeName TypeInt = "int"
getTypeName TypeString = "string"
getTypeName (TypeIdent ident) = ident
getTypeName (TypeIdentArray ident) = ident


typeCheckVarDecl theType ident classes context = 
  case theType of
    TypeBool -> "Ok"
    TypeInt -> "Ok"
    TypeString -> "Ok"
    (TypeIdent typeName) -> case lookup typeName classes of
      Just classSym -> "Ok"
      Nothing -> error ("Unknown type " ++ typeName ++ " in the var declaration list of class " ++ (show (lookup "this" context)))
    (TypeIdentArray typeNameArray) -> let tName = reverse (drop 2 (reverse typeNameArray)) in -- drops the [] at the end of the typeNameArray.
      case lookup tName classes of
        Just classSym -> "Ok"
        Nothing -> error ("Unknown type " ++ typeNameArray ++ " in the var declaration list of class " ++ (show (lookup "this" context)))

typeCheckMethodDeclList MEmpty classes context = "Ok" -- no methods so automatically successful
typeCheckMethodDeclList (MethodDeclList methodDecl methodDeclList) classes context =
    if checkForDuplicateMethodDeclarations (MethodDeclList methodDecl methodDeclList) [] context == "Ok" && typeCheckMethodDecl methodDecl classes context == "Ok" 
    then typeCheckMethodDeclList methodDeclList classes context
    else "Fail4"

checkForDuplicateMethodDeclarations MEmpty _ _ = "Ok"
checkForDuplicateMethodDeclarations (MethodDeclList methodDecl methodDeclList) methods context =
  case elem (methodName methodDecl) methods of
    False -> checkForDuplicateMethodDeclarations methodDeclList ((methodName methodDecl) : methods) context
    True -> error("Duplicate method " ++ (methodName methodDecl))
  

typeCheckMethodDecl (MethodDecl theType methodName formalList varDeclList statementList exp) classes context =    
    let context2 = (getThisClassVariables classes context) ++ (getVarDeclListVariables varDeclList classes) ++ (getFormalListVariables formalList classes) ++ context
        typeName = getTypeName theType
    in
      if typeCheckStatementList statementList classes context2 == "Ok" 
      then 
        if typeName /=  (typeCheckExp exp classes context2)
        then error ("the type of method " ++ methodName ++ " does not match the return type of " ++ (show exp))
        else "Ok"
      else 
        "Fail5"          
                

getThisClassVariables classes context =
    case lookup "this" context of
      Nothing -> error("undeclared this in context: " ++ show context)
      Just thisTypeName -> cVarTypes thisTypeName classes

cVarTypes typeName classes = 
    case lookup typeName classes of
      Nothing -> error("undeclared type: " ++ typeName)
      Just classSym -> publicVariables classSym

getVarDeclListVariables VEmpty _ = [] -- empty variable declaration list

getVarDeclListVariables (VarDeclList theType ident varDeclList) classes = 
    let typeName = getTypeName theType 
    in 
      if lookup typeName classes == Nothing || checkForDuplicateVariableDecls varDeclList [(theType, ident)] /= "Ok"
      then error("unknown type " ++ typeName ++ " for variable " ++ ident)
      else (ident, getTypeName theType) : getVarDeclListVariables varDeclList classes

checkForDuplicateVariableDecls :: VarDeclList -> [(Type, Ident)] -> String
checkForDuplicateVariableDecls VEmpty _ = "Ok"
checkForDuplicateVariableDecls (VarDeclList theType ident varDeclList) varList =
  case elem (theType, ident) varList of
    False -> checkForDuplicateVariableDecls varDeclList ((theType, ident) : varList)
    True -> error("duplicate declaration of " ++ ident ++ " in " ++ show(varDeclList)) 



getFormalListVariables FEmpty classes = []
getFormalListVariables (FormalList theType ident formalList) classes = 
    let typeName = getTypeName theType
    in
      if lookup typeName classes == Nothing || checkForDuplicateFormalListVariables formalList [(theType, ident)] /= "Ok"
      then error("unknown type " ++ typeName ++ " for variable " ++ ident)
      else (ident, getTypeName theType) : getFormalListVariables formalList classes
    
checkForDuplicateFormalListVariables :: FormalList -> [(Type, Ident)] -> String
checkForDuplicateFormalListVariables FEmpty _ = "Ok"
checkForDuplicateFormalListVariables (FormalList theType ident formalList) fList = case elem (theType, ident) fList of
  False -> checkForDuplicateFormalListVariables formalList ([(theType, ident)] ++ fList)
  True -> error("duplicate declaration of " ++ ident ++ " in " ++ show(fList))
      

typeCheckMainClass (MClass className paramName statement) classes = if (lookup className classes == Nothing)
                                                                    then error("Error " ++ className ++ " is not a declared class")
                                                                    else typeCheckStatement statement classes [("this", className), (paramName, "string[]")]



typeCheckStatementList Empty classes context = "Ok"
typeCheckStatementList (StatementList statementList statement) classes context =
    if typeCheckStatement statement classes context == "Ok" && typeCheckStatementList statementList classes context == "Ok"
    then "Ok"
    else "Fail6"

typeCheckStatement (SList statementList) classes context = 
    typeCheckStatementList statementList classes context
typeCheckStatement (SIfElse exp1 statement1 statement2) classes context =
    if (typeCheckExp exp1 classes context) == "bool" && typeCheckStatement statement1 classes context == "Ok" && typeCheckStatement statement2 classes context == "Ok"
    then "Ok"
    else error ("Error in if else statement")

typeCheckStatement (SWhile exp statement) classes context = 
      if typeCheckExp exp classes context == "bool" 
      then typeCheckStatement statement classes context
      else error("Error type of " ++ show(exp) ++ " is not bool in while statement")


typeCheckStatement (SEqual ident exp1) classes context = 
    let identType = lookup ident context in
    case identType of 
         Nothing -> error("Error undeclared identifier " ++ ident ++ " in equal statement")
         Just iType -> if iType == typeCheckExp exp1 classes context
                     then "Ok"
                     else error("Error types do not match in equals statements, type1 " ++ iType ++ " type2 " ++ (typeCheckExp exp1 classes context))


typeCheckStatement (SPrint exp) classes context = if typeCheckExp exp classes context /= "" then "Ok" else "Fail"
typeCheckStatement (SArrayEqual ident exp1 exp2) classes context = 
  case lookup ident context of
    Nothing -> error("Error undeclared identifier " ++ ident ++ " in equal statement")
    Just iType -> if take 2 (reverse iType) /= "[]" then
                    error(ident ++ " is not an array")
                  else 
                    let baseTypeName = reverse (take 2 (reverse iType)) in
                    if baseTypeName /= typeCheckExp exp2 classes context || typeCheckExp exp1 classes context /= "bool" then
                      error("Error, can't assign to array")
                    else
                      "Ok"

-- some helper functions for typeCheckExp

expTypes ExpListEmpty classes context = []
expTypes (ExpList exp expRest) classes context = (typeCheckExp exp classes context) : expRestTypes expRest classes context
expTypes (ExpListExp exp) classes context = [typeCheckExp exp classes context]
    
expRestTypes (ExpRest exp) classes context = [typeCheckExp exp classes context]
        

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
 
checkMethodTypes (MethodSymbol returnType name ((argName, argType) : args)) (type1 : types)  = 
    if argType == type1 
    then checkMethodTypes (MethodSymbol returnType name args) types 
    else error ("method " ++ name ++ " argument type mismatch " ++ " expected type " ++ argType ++ " but got type " ++ type1)




-- the typeCheckExp function returns the type name of the expression
typeCheckExp (ExpOp exp1 char exp2) classes context = 
    if typeCheckExp exp1 classes context == "int" && typeCheckExp exp2 classes context == "int"
       then "int"
       else error ("one of the expressions exp1:" ++ show(exp1) ++ " exp2:" ++ show(exp2) ++ " is not an integer \n exp1 type: " ++ (typeCheckExp exp1 classes context) ++ "\n exp2 type: " ++ (typeCheckExp exp2 classes context))


typeCheckExp (ExpComOp exp1 char exp2) classes context = 
    if typeCheckExp exp1 classes context == "int" && typeCheckExp exp2 classes context == "int"
       then "bool"
       else error ("one of the expressions exp1:" ++ show(exp1) ++ " exp2:" ++ show(exp2) ++ " is not an integer \n exp1 type: " ++ (typeCheckExp exp1 classes context) ++ "\n exp2 type: " ++ (typeCheckExp exp2 classes context))


typeCheckExp (ExpArray exp1 exp2) classes context  =  -- "Exp [ Exp ]"
  if typeCheckExp exp2 classes context /= "int" then
    error("Error in ExpArray")
  else
    if take 2 (reverse (typeCheckExp exp1 classes context)) /= "[]" then
      error("Error in ExpArray")
    else
      reverse(drop 2 (reverse (typeCheckExp exp1 classes context)))
    
  
typeCheckExp (ExpFCall exp ident expList) classes context =   
      let className = typeCheckExp exp classes context -- Exp . Ident ( ExpList )
          classSym = lookup className classes
          expListTypes = expTypes expList classes context 
      in case classSym of
           Just x -> (checkFunctionCall x ident expListTypes)
           Nothing -> error ("Undeclared class " ++ className ++ " in function call")

typeCheckExp (ExpInt int) classes context = "int"

typeCheckExp (ExpNewIntArray exp) classes context = 
    if typeCheckExp exp classes context == "int"
       then "int[]"
       else error ("Error new int[exp] the expression type is not an integer")


typeCheckExp (ExpNewBoolArray exp) classes context = 
    if typeCheckExp exp classes context == "int"
       then "bool[]"
       else error ("Error new bool[exp] the expression type is not an integer")


typeCheckExp (ExpNewStringArray exp) classes context = 
    if typeCheckExp exp classes context == "int"
       then "string[]"
       else error ("Error new string[exp] the expression type is not an integer")

typeCheckExp (ExpBool bool) classes context  = "bool" -- True or False


typeCheckExp (ExpIdent ident) classes context = 
    case lookup ident context of
      Just x -> x
      Nothing -> error ("Error " ++ ident ++ " is not a declared variable, context " ++ show context)
                                                       
typeCheckExp (ExpNewIdent ident) classes context = 
    if lookup ident classes == Nothing
    then error ("Error " ++ ident ++ " is not a declared class" ++ ", context " ++ show context)
    else ident

typeCheckExp (ExpNewIdentArray ident exp) classes context = 
    if lookup ident classes == Nothing || typeCheckExp exp classes context /= "int"
    then error ("Error " ++ ident ++ " is not a declared class or " ++ show(exp) ++ " is not an int" ++ ", context " ++ show context)
    else ident ++ "[]"

typeCheckExp (ExpExp exp) classes context  = typeCheckExp exp classes context -- Exp ( Exp )

typeCheckExp (ExpThis) classes context =
    let thisSym = lookup "this" context in
    case thisSym of 
      Just sym -> sym
      Nothing -> error ("this symbol undeclared")

typeCheckExp (ExpNot exp) classes context = 
    if typeCheckExp exp classes context == "bool"
       then "bool"
       else error "wrong type for !exp, expecting bool type"

typeCheckExp (ExpLength exp) classes context =
    if typeCheckExp exp classes context == "int[]"
           then "int"
           else error "Error in " ++ show(exp) ++ ".length the expression is not of type int[] "


main = do 
  inStr <- getContents
  let parseTree = newl (alexScanTokens2 inStr)  
  putStrLn ("parseTree: " ++ show(parseTree))
  let defaultClasses = [("int", ClassSymbol "int" [] []), ("string", ClassSymbol "string" [] []), ("bool", ClassSymbol "bool" [] [])]
  let classes = defaultClasses ++ classSymbols parseTree
  putStrLn "classes " 
  print classes
  let typeCheckingResult = typeCheck parseTree classes
  if typeCheckingResult == "Ok"
     then putStrLn "Semantic Analysis Results: Passed"
     else putStrLn ("Semantic Analysis Results: Failed, " ++ typeCheckingResult)
  
  putStrLn ("parseTree: " ++ show(parseTree))
  print "done"
}
