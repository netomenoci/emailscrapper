
%{
#include <stdio.h>
%}

LTRNM [a-zA-Z0-9]
SYMB [a-zA-Z0-9_\.-]
EMAIL {LTRNM}+({SYMB}*{LTRNM})*@{LTRNM}+({SYMB}*{LTRNM})*


%%
{EMAIL} {printf("%s\n", yytext); }
[_\.-]*{EMAIL}[_-]* ;
[ \t\n] ;
.     ;


%%

int main() {
  yylex();
  return 0;
}
