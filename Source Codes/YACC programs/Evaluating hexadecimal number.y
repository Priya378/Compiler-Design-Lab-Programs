%{
#include<stdio.h>
#include<stdlib.h>
%}
%token bit
%%
G:E {printf("Hexadecimal number is %d\n",$$); 
     return 0;}
 ;
E:E bit {$$=16*$1+$2;}
 |bit   {$$=$1;}
 ;
%%

int main()
{
printf("Evaluating hexadecimal number\n");
printf("Enter a hexadecimal number:\n");
yyparse();
return 0;
}
int yyerror(char *s){
printf("It is invalid\n");
exit(0);
}

