%option noyywrap

%{
#include <stdio.h>
%}

%%

"int"                  { printf("KEYWORD: INT\n"); }
"if"                   { printf("KEYWORD: IF\n"); }
"else"                 { printf("KEYWORD: ELSE\n"); }
"return"               { printf("KEYWORD: RETURN\n"); }

[0-9]+                 { printf("INTEGER: %s\n", yytext); }
[a-zA-Z][a-zA-Z0-9]*   { printf("IDENTIFIER: %s\n", yytext); }

"="                    { printf("ASSIGN: %s\n", yytext); }
"+"                    { printf("PLUS: %s\n", yytext); }
"-"                    { printf("MINUS: %s\n", yytext); }
"*"                    { printf("MULTIPLY: %s\n", yytext); }
"/"                    { printf("DIVIDE: %s\n", yytext); }
">="                   { printf("GREATER_EQUAL: %s\n", yytext); }

"("                    { printf("LEFT_PAREN: %s\n", yytext); }
")"                    { printf("RIGHT_PAREN: %s\n", yytext); }
"{"                    { printf("LEFT_BRACE: %s\n", yytext); }
"}"                    { printf("RIGHT_BRACE: %s\n", yytext); }
";"                    { printf("SEMICOLON: %s\n", yytext); }

[ \t\n]+               { /* ignore whitespace */ }
.                      { printf("UNKNOWN: %s\n", yytext); }

%%

int main()
{
    printf("--- Example 2 & 3 Scanner ---\n");
    yylex();
    return 0;
}
