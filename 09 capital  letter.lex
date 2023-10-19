%{
%}

%%
[A-Z] {
  printf("%c",yytext[0]);
}

 {
.
}

%%
int yywrap()
{

}

int main(){
printf("enter the text");
yylex();
return 0;
}
