%{
#include "g3.tab.h"
#include <iostream>
using namespace std;
%}

%option noyywrap

%%

for {
	return FOR;
}

if {
	return IF;
}

while {
	return WHILE;
}

var {
	return VAR;
}

"true"|"false" {
	return LOGICAL_EXP;
}

"=="|"!=" {
	return COND_OP;
}

"+"|"-"|"*"|"/"|";" {
	return yytext[0];
}

[a-z]+ {
	return VARIABLE;
}

[0-9]+ {
	return NUMBER;
}

[ \t\n\r] {}

. {
	return yytext[0];
}

%%
