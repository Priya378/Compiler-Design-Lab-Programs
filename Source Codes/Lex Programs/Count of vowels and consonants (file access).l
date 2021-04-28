%{
        int cvowel=0,ccons=0;
%}
%%
[ \t\n]		       ;
[aeiouAEIOU]   cvowel++;
[a-zA-Z]       ccons++;
%%

int yywrap(){}
int main(void)
{
	yyin=fopen("file.txt","r");
	yyout=fopen("output.txt","w");
        yylex();
        printf("Count of consonants is %d, vowels is %d\n", ccons, cvowel);
        fprintf(yyout,"Count of consonants is %d, vowels is %d\n", ccons, cvowel);
        fclose(yyin);
        fclose(yyout);
        return 0;
}
