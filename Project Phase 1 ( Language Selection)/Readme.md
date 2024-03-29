# CC Spring 2021: Project Phase 1 #

### PROJECT MEMBERS ###
StdID | Name
------------ | -------------
**8866** | **Farhan Amin**
8938 | Shahruh Shabbir Abbasi

## Language Selected ##
Mini-C

## Example of main constructs ##
```
void main()
{
int a[5][3]; 
int b[8.5]; 
int c=5;
float d;
27
int i;
int c=3; 
int sum;
sum=0;
for(i=0;i<10;i++)
{
sum=sum+i;
}return;
}

```

## Lexical Specification ##

```

 'x' — terminal symbol.
 x? – zero or one occurrences of x.
 x* – zero or more occurrences of x.
 x+ – one or more occurrences of x.
 x | y – alternative (x or y).
 () – group, for example (x | y) z (x y)?
program = statement*
statement = block
 	| SEMI
 	| assignment
 	| declaration
 	| if
 	| while
 	| 'break' SEMI
 	| 'continue' SEMI
 	| 'exit' ' (' ' )' SEMI
 	| 'print' parExpression SEMI
 	| 'println' parExpression SEMI

block = '{' statement* '}'
expression = literal
	| ID
 	| ('!' | ' -' ) expression
 	| expression ('*' | '/' | '%' ) expression
 	| expression ('+' | ' - ' ) expression
 	| expression ('<' | '>' | '<=' | '>=' ) expression
 	| expression ('==' | '!=' ) expression
 	| expression ('&&' ) expression
 	| expression ('||' ) expression
 	| parExpression
 	| 'readInt' ' (' ' )'
 	| 'readDouble' ' ( ' ' )'
 	| 'readLine' ' (' ' )'
 	| 'toString' parExpression

parExpression = '(' expression ')'
assignment = ID assignmentOp expression SEMI
declaration = type ID (assignmentOp expression)? SEMI
if = 'if' parExpression statement ( 'else' statement)?
while = 'while' parExpression statement
assignmentOp = '='
6
type = 'int'
	| 'double'
 	| 'bool'
 	| 'string'

literal = IntegerLiteral
 	| FloatingPointLiteral
 	| StringLiteral
 	| BooleanLiteral

IntegerLiteral = DIGIT+
FloatingPointLiteral = DIGIT+ '.' DIGIT+
StringLiteral = '"' (CHAR | ' \"' )* '"'
BooleanLiteral = 'true' | 'false'

SEMI = ';'
ID = (LETTER | '_' ) (LETTER | DIGIT | '_' )*
DIGIT = '0' | ... | '9'
LETTER = 'a' | ... | 'z' | 'A' | ... | 'Z'
CHAR = <unicode character, as in Java>
Whitespace characters (' ' , ' \t' , ' \r' , ' \n' ) are skipped outside of tokens.

```


## Language CFG ##

```


Function      ->  Type identifier ( ArgList ) CompoundStmt
ArgList       ->  Arg
                  | ArgList , Arg
Arg           ->  Type identifier
Declaration   ->  Type IdentList ;
Type          ->  int
                  | float
IdentList     ->  identifier , IdentList
                  identifier
Stmt          ->  ForStmt
                  | WhileStmt
                  | Expr ;
                  | IfStmt
                  | CompoundStmt
                  | Declaration
                  | ;
ForStmt       ->  for ( Expr ; OptExpr ; OptExpr ) Stmt
OptExpr       ->  Expr
                  | e
WhileStmt     ->  while ( Expr ) Stmt
IfStmt        ->  if ( Expr ) Stmt ElsePart
ElsePart      ->  else Stmt
                  | e
CompoundStmt  ->  { StmtList }
StmtList      ->  StmtList Stmt
                  | e
Expr          ->  identifier = Expr
                  | Rvalue
Rvalue        ->  Rvalue Compare Mag
                  | Mag
Compare       ->  == | < | > | <= | >= | !=
Mag           ->  Mag + Term
                  | Mag - Term
                  | Term
Term          ->  Term * Factor
                  | Term / Factor
                  | Factor
Factor        ->  ( Expr )
                  | - Factor
                  | + Factor
                  | identifier
                  | number

```
