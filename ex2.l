%{
#include <stdio.h>
int i=0;
%}
%option noyywrap
%%
[0-9]+".".*$ {ECHO; printf("\n"); REJECT;}
infoiasi {i++;}
.|\n ;
%%
int main(int argc, char** argv ){
if(argc>0)
 yyin = fopen(argv[1],"r");
yylex();
printf("\n number of infoiasi: %d\n",i);
    
}
