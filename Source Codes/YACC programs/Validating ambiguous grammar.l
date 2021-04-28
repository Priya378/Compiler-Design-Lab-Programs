%{
#include "y.tab.h"
%}
%%
[0-9]+ {return num;}
[a-zA-Z]+ {return id;}
[\t]+;
. {return yytext[0];}
\n {return 0;}
%%
