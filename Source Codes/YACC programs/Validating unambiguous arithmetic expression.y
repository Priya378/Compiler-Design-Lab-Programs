%{
#include<stdio.h>
#include<stdlib.h>
%}
%token num
%%
E:E'+'T
 |E'-'T
 |T
 ;
T:T'*'F
 |T'/'F
 |F
 ;
F:num
 ;
%%

int main()
{
printf("Validating unambiguous arithmetic expression\n");
printf("Enter an expression:\n");
yyparse();
printf("Valid Expression\n");
return 0;
}
int yyerror(char *s){
printf("Invalid expression\n");
exit(0);
}
