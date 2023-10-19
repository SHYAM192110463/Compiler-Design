%{
%}

%%

[a-z.0-9]+@[a-z]+.(com|in) {printf("\n the email id entered is valid\n");}
.+ {printf("\n the email id entered is invalid\n");}


%%

int yywrap()
{
}

int main()
{
printf("\n enter the Email ID:");
yylex();
}
