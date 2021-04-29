%{
#include<stdio.h>
#include<stdlib.h>
%}
%token bit
%%
G:E {printf("Binary number is %d\n",$$); 
     return 0;}
 ;
E:E bit {$$=2*$1+$2;}
 |bit   {$$=$1;}
 ;
%%

int main()
{
printf("Evaluating binary number\n");
printf("Enter a binary number:\n");
yyparse();
return 0;
}
int yyerror(char *s){
printf("It is invalid\n");
exit(0);
}

