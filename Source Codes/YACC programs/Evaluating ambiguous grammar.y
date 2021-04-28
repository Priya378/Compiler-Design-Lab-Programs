%{
#include<stdio.h>
#include<stdlib.h>
%}
%token num id
%left '+' '-'
%left '*' '/'

%%
G:E {printf("Result=%d\n",$$);
     return 0;}
E: E '+' E	{$$=$1+$3; }
 |E'-'E		{$$=$1-$3;}
 |E'*'E		{$$=$1*$3;}
 |E'/'E		{$$=$1/$3;}
 |'('E')'	{$$=$2;}
 |id		{$$=$1;}
 |num		{$$=$1;}
  ;
%%

int main()
{
printf("Evaluating ambiguous grammar\n");
printf("Enter an expression\n");
yyparse();
printf("Valid Expression\n");
return 0;
}
//Print when error
int yyerror(char *s){
printf("Invalid expression\n");
exit(0);
}
