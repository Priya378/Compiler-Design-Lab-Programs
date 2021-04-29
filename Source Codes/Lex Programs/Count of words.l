%{
int nword=0;
%}

%%
[^ \t\n]+	{nword++; }		
\n		;
.     ;
%%
int yywrap(){}
int main()
{
  printf("Provide input:\n");
  yylex();
  printf("Count of words:%d\n", nword);
  return 0;
}
