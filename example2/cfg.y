%{
	#include<stdio.h>
	int flag=0;

%}
%{
	int yylex();
	void yyerror();
%}

%union {
    int num;
}

%token ADD SUB MULTIPLY DIVIDE LBRACKET RBRACKET NL
%token <num> DIGIT
%left ADD SUB
%left MULTIPLY DIVIDE

%%
str0 : str nl
    ;
str : str ADD str
    | str SUB str
    | str MULTIPLY str
    | str DIVIDE str
    | LBRACKET str RBRACKET
    | DIGIT
    ;
nl : NL {return(0);} 
   ;
%%

void main()
{
	printf("Enter an arthimatic problem to validate.\n");
	yyparse();
	if(flag==0)
		printf("STRING VALID\n");
}

void yyerror(){
	flag=1;
	printf("STRING INVALID\n");
}