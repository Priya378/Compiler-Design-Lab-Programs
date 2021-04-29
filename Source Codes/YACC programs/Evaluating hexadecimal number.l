%{
#include "y.tab.h"
extern yylval;
char c;
int j;
%}
%%
[01] {yylval=atoi(yytext);return bit;}
[a-f] {for(c='a', j=10;c<='f';c++,j++)
          {
             if(*yytext==c)
             {
                     yylval=j; return bit;
             }
          }         
        }
[A-F] {for(c='A', j=10;c<='F';c++,j++)
          {
             if(*yytext==c)
             {
                     yylval=j; return bit;
             }
          }         
        }
. {return yytext[0];}
\n {return 0;}
%%
