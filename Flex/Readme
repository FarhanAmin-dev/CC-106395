# CC 106395 Lexical Analyzer with Parser #

### PROJECT MEMBERS ###
StdID | Name
------------ | -------------
**8866** | **Farhan Amin**
8938 | Shahrukh Shabbir Abbasi

## Project Description ##
our project aim is to make a lexical analyzer in which we we put the reguler expression using flex and pass an input string, where it shows the no of tokens from input file and placed the token in output file, ten our next work was to create an error detection using yaac and marge both files intpo one and run it.
## Sample Language Used ##
We use Mini C language in our project.

# void main()
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
### Lexical Specification ###

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

### Grammar ###
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

## Problems Faced #
In Task 1 and 2 We were doing great but in Task 3 we are having so many issue using or installing regarding yacc , still manage to install that but created a error finder code for task 3 , but its making so many errors since we are newone using yacc so find the solution even on internet regarding issues in task 3


### Problem 1: I don't know how to Code ###
 i really dont knows to code on flex first but after practicing for several days i was able to code and completed my 2nd task, but still with less time for task 3, dont know much about Yacc. so 
faced many issue using yacc as well as in task 3 complition 
 

## References ##
- Mention and add [links](https://guides.github.com/features/mastering-markdown/), references, books, research papers, code samples, you used to get help in the project.
- Use bullets like this.
- Flex Tutotrial [Link] (http://alumni.cs.ucr.edu/~lgao/teaching/flex.html)
- Yacc Tutorial [Link] (https://developer.ibm.com/technologies/systems/tutorials/au-lexyacc/)
- Mention all references. Plagiarism will not be tolerated.
- You see markdown is not that difficult.
- You are CS students not some tom harry from BBA SHE-B-A :-).
- You can and must learn to use markdown and Github. 
- All future project development will be down in something similar to GITHUB
