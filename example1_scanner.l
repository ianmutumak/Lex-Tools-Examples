%option noyywrap

%{
#include <stdio.h>
%}

%%

[0-9]+                 { printf("INTEGER: %s\n", yytext); }
[a-zA-Z][a-zA-Z0-9]*   { printf("IDENTIFIER: %s\n", yytext); }
[ \t]+                 { /* ignore horizontal whitespace */ }
\n                     { return 0; }
.                      { printf("UNKNOWN: %s\n", yytext); }

%%

int main()
{
    printf("--- Example 1 Scanner ---\n");
    yylex();
    return 0;
}
