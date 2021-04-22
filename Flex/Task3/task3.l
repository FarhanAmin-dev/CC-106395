%{
	#include <stdio.h>
	#include <stdlib.h>
	

%}

%%
[a] {return id;}
[\t] {;}
[\n] {return 0;}
. {return yytext[0];}
%%