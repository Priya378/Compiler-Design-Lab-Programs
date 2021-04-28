%{
#include "y.tab.h"
%}
%%
[01]+ {return bin;}
. {return yytext[0];}
\n {return 0;}
%%
