%{
#include<stdio.h>
%}

%%

[0-9]+[.][0-9]+ { printf("Float constant: %s\n", yytext); }
[0-9]+ { printf("Integer constant: %s\n", yytext); }

%%
int yywrap(){}

int main()
{
    yylex();
    return 0;
}
