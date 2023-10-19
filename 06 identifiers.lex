%{
%}

%%

[a-z][a-z.0-9]+ {printf("identifiers");}
.+ {printf(" not a identifiers");}

%%
int yywrap()
{}

int main()
{
printf("enter the input:");
yylex();
}
