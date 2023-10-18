%{
#include<stdio.h>
%}

%%

abc { printf("ABC"); }
. { printf("%c", yytext[0]); }

%%
int yywrap(){}

int main()
{
    yylex();
    return 0;
}
