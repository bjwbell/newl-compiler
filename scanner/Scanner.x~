
{
module Scanner where
}

%wrapper "basic"

$digit = 0-9			-- digits
$alpha = [a-zA-Z]		-- alphabetic characters

tokens :-

  $white+				;
  "class"				{ \s -> TClass }
  "new"					{ \s -> TNew }
  "String"				{ \s -> TString }
  "static"				{ \s -> TStatic }
  "void"				{ \s -> TVoid }
  "main"				{ \s -> TMain }
  "return"                              { \s -> TReturn }
  "public"				{ \s -> TPublic }
  "extends"				{ \s -> TExtend }
  "int"					{ \s -> TInt }
  "boolean"				{ \s -> TBool }
  "if"					{ \s -> TIf }
  "else"				{ \s -> TElse }
  "true"				{ \s -> TTrue }
  "false"				{ \s -> TFalse }
  "this"				{ \s -> TThis }
  "length"				{ \s -> TLength }
  "while"				{ \s -> TWhile }
  $digit+				{ \s -> TIntLiteral (read s) }
  "."                                   { \s -> TPeriod }
  "&&"					{ \s -> TOp (head s) }
  "!"					{ \s -> TNot }
  [\+\-\*\/]                            { \s -> TOp (head s) }
  "<"                                   { \s -> TComOp (head s) }
  "="					{ \s -> TEquals }
  ";" 					{ \s -> TSemiColon }
  "("					{ \s -> TLeftParen }
  ")"					{ \s -> TRightParen }
  $alpha[$alpha $digit \_ \']*		{ \s -> TIdent s }
  "{"	 	 	   		{ \s -> TLeftBrace }
  "}"					{ \s -> TRightBrace }
  ","					{ \s -> TComma }
  "["					{ \s -> TLeftBrack }
  "]"					{ \s -> TRightBrack }
  "System.out.println"                  { \s -> TPrint }
{
-- Each action has type :: String -> Token

-- The token type:
data Token =
     	TLeftBrace	|
	TRightBrace	|
	TComma		|
	TLeftBrack	|
	TRightBrack	|
	TClass 		|
	TPublic		|
	TString		|
	TStatic		|
	TVoid		|
	TMain		|
	TExtend		|
	TInt		|
	TBool		|
	TIf		|
	TElse		|
	TTrue		|
	TFalse		|
	TThis		|
	TLength		|
	TWhile		|
	TNew		|
	TOp Char        |
	TComOp Char     |
        TNot            |
	TEquals         |
	TPeriod         |
	TSemiColon      |
	TLeftParen 	|
	TRightParen 	|
	TIdent String	|
        TPrint          |
	TIntLiteral Int |
        TReturn
	deriving (Eq,Show)

--main = do
--  s <- getContents
--  print (alexScanTokens s)

}
