include "alldifferent.mzn";

% Problema 3

% Definimos los 10 dígitos que se usarán en la resta.
var 0..9: a; var 0..9: b; var 0..9: c; 
var 0..9: d; var 0..9: e; var 0..9: f; 
var 0..9: g; var 0..9: h; var 0..9: i;
var 0..9: j; 

% Definimos variables donde se almacenarán el minuendo, el sustraendo y la solución,
% respectivamente.
var int: first; 
var int: second;
var int: sol;

% Nos aseguramos de que los dígitos sean diferentes
constraint alldifferent([a,b,c,d,e,f,g,h,i,j]);

% Asignamos la diferencia a variables para facilitar la impresión y comprensión
constraint first = 10000*a + 1000*b + 100*c + 10*d + e;
constraint second = 10000*f + 1000*g + 100*h + 10*i + j;
constraint sol = first - second;
constraint sol > 0;

% Minimizando el resultado
solve minimize sol;

% Imprimimos los términos y resultados
output ["A: ", show(a), "\t B: ", show(b), "\t C: ", show(c), "\t D: ", show(d), "\t E: ",
        show(e), "\nF: ", show(f), "\t G: ", show(g), "\t H: ", show(h), "\t I: ", show(i), 
        "\t I: ", show(j), "\n\n", "Resultado de la diferencia: ", show(first)," - ", show(second)," = ",show(sol)];
