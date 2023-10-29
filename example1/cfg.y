%{
	#include<stdio.h>
	int flag=0;

%}
%{
	int yylex();
	void yyerror();
%}

%token ONE TWO ZERO NL

%%
str0 : str1 str2 nl
    | /* epsilon */ { }
    ;
str1 : ZERO str1 ONE
    | /* epsilon */ { }
    ;
str2 : ONE str2 TWO
    | str2 TWO
    | /* epsilon */ { }
    ;
nl : NL {return(0);} 
   ;
%%

void main()
{
	printf("Enter a string that contains equal amount of \"a\" and \"b\" characters and as many \"c\" characters.\n");
	yyparse();
	if(flag==0)
		printf("STRING VALID\n");
}

void yyerror(){
	flag=1;
	printf("STRING INVALID\n");
}