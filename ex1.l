%{
#include <stdio.h>
%}

digits [0-9]{2,}
word [a-z]+
word_1 [a-z]*i[a-z]*i[a-z]*
digits_1 [1|2|3|4|5|6|7|8|9][0|2|4|6|8]
%option noyywrap

%%
\<{digits_1}\> {printf ("[digits:%s]\n", yytext);}
{word_1}"."{word_1}"@info.uaic.ro"  {printf ("[email:%s]\n", yytext);}
 .|\n ; 
%%

int main(int argc, char** argv){
FILE *g;
if(argc>0)
 yyin = fopen(argv[1],"r");

/*if(!(g = fopen("out.txt","w")))
    fprintf(stderr,"error creating file!");
else
 yyout=g; */

yylex();

}



