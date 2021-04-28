%{
#include<stdio.h>
#include<stdlib.h>
%}
%token num
%%
G:E
 ;
E:E num
 |num
 ;
%%

int main()
{
printf("Validating binary number\n");
printf("Enter a binary number:\n");
yyparse();
printf("It is valid\n");
return 0;
}
int yyerror(char *s){
printf("It is invalid\n");
exit(0);
}
