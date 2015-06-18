include "alldifferent.mzn";

% Problema 1

var int: a; var int: b; var int: c; 
var int: d; var int: e; var int: f; 
var int: g; var int: h; var int: i;

% Todas las variables deben ser positivas
constraint a > 0; constraint b > 0; constraint c > 0; 
constraint d > 0; constraint e > 0; constraint f > 0;
constraint g > 0; constraint h > 0; constraint i > 0;

% Verifica que todas tengan valores diferentes
constraint alldifferent([a,b,c,d,e,f,g,h,i]);

% Ecuacion a satisfacer
constraint a div (b*c) + d div (e*f) + g div (h*i) = 1;

solve satisfy;

output ["A: ", show(a), "\t B: ", show(b), "\t C: ", show(c), 
        "\nD: ", show(d), "\t E: ", show(e), "\t F: ", show(f), 
        "\nG: ", show(g), "\t H: ", show(h), "\t I: ", show(i), "\n"];
