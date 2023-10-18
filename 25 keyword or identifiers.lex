%{
#include<stdio.h>
#include<string.h>
%}

%%

int|float|char|double|void|if|else|while|do|for|return { printf("Keyword: %s\n", yytext); }
[a-zA-Z_][a-zA-Z0-9_]* { printf("Identifier: %s\n", yytext); }

%%
int yywrap(){}

int main()
{
    yylex();
    return 0;
}
