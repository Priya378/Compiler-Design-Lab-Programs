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

        printf("Input:\n");
        yylex();
        printf("\nCount of vowels=%d\nCount of consonants=%d",cvowel,ccons);
        return 0;
}
