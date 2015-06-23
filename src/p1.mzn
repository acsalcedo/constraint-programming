include "alldifferent.mzn";

% Problema 1

% Variables
var int: a; var int: b; var int: c; 
var int: d; var int: e; var int: f; 
var int: g; var int: h; var int: i;

% Variables para calcular los denominadores 
var int: denom1; var int: denom2; var int: denom3;

% Todas las variables deben ser positivas
constraint a > 0; constraint b > 0; constraint c > 0; 
constraint d > 0; constraint e > 0; constraint f > 0;
constraint g > 0; constraint h > 0; constraint i > 0;

% Verifica que todas tengan valores diferentes
constraint alldifferent([a,b,c,d,e,f,g,h,i]);

% Denominadores
constraint denom1 = b*c;
constraint denom2 = e*f;
constraint denom3 = h*i;

% Ecuacion a satisfacer
constraint a/denom1 + d/denom2 + g/denom3 = 1;

solve satisfy;

output ["A: ", show(a), "\t B: ", show(b), "\t C: ", show(c), 
        "\nD: ", show(d), "\t E: ", show(e), "\t F: ", show(f), 
        "\nG: ", show(g), "\t H: ", show(h), "\t I: ", show(i), "\n"];
