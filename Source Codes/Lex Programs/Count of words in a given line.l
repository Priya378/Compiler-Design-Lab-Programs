%{
int nword=0;
%}

%%
[^ \t\n]+	{nword++; }
.		
\n		return 0;
%%
int yywrap(){}
int main()
{
  printf("Input one line:\n");
  yylex();
  printf("Count of words in given line:%d\n", nword);
  return 0;
}
