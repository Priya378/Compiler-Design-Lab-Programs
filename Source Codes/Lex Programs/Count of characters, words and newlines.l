%{
int nchar=0,nword=0, nline=0;
%}

%%
\n 		{nline++; nchar++;}
[^ \t\n]+	{nword++; nchar+=yyleng;}
.		{nchar++;}
%%
int yywrap(){}
int main()
{
  printf("Input words:\n");
  yylex();
  printf("Count of chars:%d, words: %d, new lines:%d\n", nchar, nword, nline);
  return 0;
}
