%{
#include "y.tab.h"
extern yylval;
%}
%%
[01] {yylval=atoi(yytext);return bit;}
. {return yytext[0];}
\n {return 0;}
%%
