digits 0|[1-9][0-9]*
id [a-zA-Z][a-zA-Z0-9_]*
datatype int|char|float|double|"short int"|"unsigned int"|"long int"|"long long int"|"unsigned long int"|"unsigned long long int"|"signed char"|"unsigned char"|"long double"
keyword auto|break|case|continue|do|default|const|else|enum|extern|for|if|goto|register|return|static|sizeof|struct|switch|typedef|union|void|while|volatile
header studio|conio|stdlib|math|string|ctype|time|float|limits|wctype
%{

%}
%%
{digits} printf("Digit: %s\n", yytext);
"<"{header}".h>"|"\""{header}".h\""   printf("Header file: %s\n", yytext);
{datatype}	printf("Data type: %s\n", yytext);
{keyword}	printf("Keyword: %s\n", yytext);
==|!=|>|<|>=|<= printf("Relational operator: %s\n", yytext);
[/][/][^\n]*  printf("It is a single line comment\n");
"/*"([^"*"]|[*][^"/"])*"*/" printf("It is a multi line comment\n");
#include|#define    printf("Preprocessor\n");	
{id}		printf("Identifier\n");
[ \t\n]+
. printf("Unrecognised character\n");
%%

int main(void)
{
	printf("Input:\n");
        yylex();
        return 0;
}
