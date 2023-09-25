%{
#include <stdio.h>
#include<string.h>
int i=0;

%}
%%
[a-z] {
       yytext[0]=yytext[0]-32;
       printf("%c",yytext[0]);
}
%%

int main()
{
      printf("Enter input : \n");
      yylex();
      return 0;
}

int yywrap(){
   return 1;
}


