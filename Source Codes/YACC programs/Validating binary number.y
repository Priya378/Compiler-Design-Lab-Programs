%{
#include<stdio.h>
#include<stdlib.h>
%}
%token bin
%%
G:bin
 ;
%%

int main()
{
printf("Validating binary number\n");
printf("Enter an expression:\n");
yyparse();
printf("Valid Expression\n");
return 0;
}
int yyerror(char *s){
printf("Invalid expression\n");
exit(0);
}
