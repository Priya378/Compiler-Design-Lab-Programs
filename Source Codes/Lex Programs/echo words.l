%{
        int count=0;
%}

%%
.    ECHO;
%%

int main(void)
{
        yylex();
        printf("Words are succesfully echoed\n");
        return 0;
}
