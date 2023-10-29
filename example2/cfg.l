%{
#include "y.tab.h"
%}

%%
"+" {return ADD;}
"-" {return SUB;}
"*" {return MULTIPLY;}
"/" {return DIVIDE;}
"(" {return LBRACKET;}
")" {return RBRACKET;}
[0-9]+ {yylval.num = atoi(yytext); return DIGIT;}
\n {return NL;}
. ;
%%