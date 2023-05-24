package codigo;

import static codigo.Tokens.*;

%%

%class Lexer
%type Tokens

L=[a-zA-Z_]+
D=[0-9]+
espacio=[ ,\t,\r,\n]+

%{
    public String lexeme;
%}

%%

[ Ss ][ Ee ][ Ll ][ Ee ][ Cc ][ Tt ] {lexeme=yytext(); return PC;}
[ Ff ][ Rr ][ Oo ][ Mm ] {lexeme=yytext(); return PC;}
[ Ww ][ Hh ][ Ee ][ Rr ][ Ee ] {lexeme=yytext(); return PC;}

while {lexeme=yytext(); return PC;}

{espacio} {/*Ignore*/}
"//".* {/*Ignore*/}

{L}({L}|{D})* {lexeme=yytext(); return ID;}
. {return ERROR;}