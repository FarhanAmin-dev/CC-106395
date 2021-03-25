# CC Spring 2021: Project Phase 1 #

### PROJECT MEMBERS ###
StdID | Name
------------ | -------------
  8866   | Farhan Amin
**8938** | **Shahrukh Shabbir Abbasi**

## Language Selected ##
Mini C

## Example of main constructs ##
```
int main() {
  int n, i, flag = 0;
  printf("Enter integer: ");
  scanf("%d", &n);
  for (i = 2; i <= n / 2; ++i) {
    
    if (n % i == 0) {
      flag = 1;
      break;
    }
  }

  if (n == 1) {
    printf("1 is neither prime nor composite.");
  } 
  else {
    if (flag == 0)
      printf("%d is a prime number.", n);
    else
      printf("%d is not a prime number.", n);
  }
  return 0;
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
