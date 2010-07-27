{
module Main where
import Scanner 
import TypeNames
import TypeChecking
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
