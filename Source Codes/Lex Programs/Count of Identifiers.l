digit [0-9]
letter [A-Za-z]
%{
        int count=0;
%}
%%
        /* Match identifier */
{letter}({letter}|{digit}|_)*     count++;
%%

int main(void)
{
        yylex();
        printf("\nCount of identifiers=%d\n",count);
        return 0;
}
