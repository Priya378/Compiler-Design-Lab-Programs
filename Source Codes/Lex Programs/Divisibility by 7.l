%{
        int i,f;
%}
%%
[ \t\n]		       ;
[0-9]+	 {i=atoi(yytext);
	  if(i%7==0)printf("Divisible by 7\n");
	  else printf("Not divisible by 7\n");}
%%

int yywrap(){}
int main(void)
{

        printf("Input numbers:\n");
        yylex();
        return 0;
}
