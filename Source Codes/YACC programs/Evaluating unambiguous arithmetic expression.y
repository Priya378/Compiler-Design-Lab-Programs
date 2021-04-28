%{
#include<stdio.h>
#include<stdlib.h>
%}
%token num
%%
G:E {printf("Result=%d\n",$$);
     return 0;}
E:E'+'T		{$$=$1+$3; }
 |E'-'T		{$$=$1-$3; }
 |T		{$$=$1; }
 ;
T:T'*'F		{$$=$1*$3; }
 |T'/'F		{$$=$1/$3; }
 |F		{$$=$1;}
 ;
F:num		{$$=$1;}
 ;
%%

int main()
{
printf("Evaluating unambiguous arithmetic expression\n");
printf("Enter an expression:\n");
yyparse();
return 0;
}
int yyerror(char *s){
printf("Invalid expression\n");
exit(0);
}
