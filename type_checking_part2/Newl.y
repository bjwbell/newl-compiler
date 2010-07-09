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
  "boolean"				{ TBool _ }
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
          "class" ident "{" "public" "static" "void" "main" "(" "string" "[" "]" ident ")" "{" Statement "}" "}" { MClass $2 $12 $15 }


ClassDeclList :
          ClassDecl     { ClassDeclList $1 CEmpty }
          | ClassDecl ClassDeclList { ClassDeclList $1 $2 }
          |             { CEmpty }

ClassDecl : 
          "class" ident "{" VarDeclList MethodDeclList "}"                     { ClassDecl $2 "void" $4 $5 }
          | "class" ident "extends" ident "{" VarDeclList MethodDeclList "}"   { ClassDecl $2 $4 $6 $7 }


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
     | "boolean"      { TypeBoolean }
     | "int"          { TypeInt }
     | "string"       { TypeString }
     | ident          { TypeIdent $1 }

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
    | "new" "int" "[" Exp "]"         { ExpNewInt $4 }  
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
    TypeBoolean
    | TypeInt
    | TypeString
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
    | ExpString String
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


classSymbols (Program mainClass classDeclList) = classSymbolMainClass mainClass : classSymbolscl classDeclList

classSymbolMainClass (MClass className paramName statement) =
                      (className, (ClassSymbol className [] [
                                                            ("main", 
                                                                    (MethodSymbol {returnType = "void", name = "main", args = [("String[]", paramName)]})
                                                            )]
                                  )
                      )
classSymbolClassDecl (ClassDecl className parentClassName varDecls methodDecls) = (className, (ClassSymbol className (varSymbols varDecls) (methodSymbols methodDecls)))
classSymbolsClassDeclList (ClassDeclList classDecl classDeclList) = classSymbolClassDecl classDecl : classSymbolsClassDeclList classDeclList
classSymbolsClassDeclList (CEmpty) = []

varSymbols VEmpty = []
varSymbols (VarDeclList theType ident varDeclList) = varSymbol theType ident : varSymbols varDeclList

varSymbol (TypeString) ident = (ident, "string")
varSymbol (TypeBoolean) ident = (ident, "boolean")
varSymbol (TypeInt) ident = (ident, "int")
varSymbol (TypeIdent identType) ident = (ident, identType)

methodSymbols MEmpty = []
methodSymbols (MethodDeclList methodDecl methodDeclList) = methodSymbol methodDecl : methodSymbols methodDeclList

methodSymbol (MethodDecl theType ident formalList varDeclList statementList exp)
             = case theType of
                    TypeInt -> (ident, MethodSymbol {returnType = "int", name = ident, args = (argSymbols formalList)})
                    TypeBoolean -> (ident, MethodSymbol {returnType = "boolean", name = ident, args = (argSymbols formalList)})
                    TypeString -> (ident, MethodSymbol {returnType = "string", name = ident, args = (argSymbols formalList)})
                    TypeIdent classType -> (ident, MethodSymbol {returnType = classType, name = ident, args = (argSymbols formalList)})

argSymbols FEmpty = []
argSymbols (FormalList theType ident formalList) =
           case theType of
                TypeInt -> (ident, "int") : argSymbols formalList
                TypeBoolean -> (ident, "boolean") : argSymbols formalList
                TypeString -> (ident, "string") : argSymbols formalList
                TypeIdent classType -> (ident, classType) : argSymbols formalList



main = do 
  inStr <- getContents
  let parseTree = newl (alexScanTokens2 inStr)  
  putStrLn ("parseTree: " ++ show(parseTree))
  print "done"
}
