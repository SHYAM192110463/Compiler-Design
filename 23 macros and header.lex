%{
#include<stdio.h>
int macro_count = 0;
int header_count = 0;
%}

%%

^#define { macro_count++; }
^#include { header_count++; }

%%
int yywrap(){}

int main()
{
    yylex();
    printf("Number of macros: %d\n", macro_count);
    printf("Number of headers: %d\n", header_count);
    return 0;
}
