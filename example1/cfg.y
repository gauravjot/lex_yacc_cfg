%{
	#include<stdio.h>
	int flag=0;

%}
%{
	int yylex();
	void yyerror();
%}

%token A B C NL

%%
str0 : str1 str2 nl
    | { }
    ;
str1 : A str1 B
    | { }
    ;
str2 : C str2
    | { }
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