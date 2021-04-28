%{
#include<stdio.h>
#include<stdlib.h>
%}
%token num id
%left '+' '-'
%left '*' '/'

%%
E: E '+' E
 |E'-'E
 |E'*'E
 |E'/'E
 |'('E')'
 |id
 |num
  ;
%%

int main()
{
printf("Validating ambiguous grammar\n");
printf("Enter an expression\n");
yyparse();
printf("Valid Expression\n");
return 0;
}
int yyerror(char *s){
printf("Invalid expression\n");
exit(0);
}
