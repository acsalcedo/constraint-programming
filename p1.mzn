
% Problema 1

var int: a; var int: b; var int: c; 
var int: d; var int: e; var int: f; 
var int: g; var int: h; var int: i;

constraint a > 0; constraint b > 0; constraint c > 0; 
constraint d > 0; constraint e > 0; constraint f > 0;
constraint g > 0; constraint h > 0; constraint i > 0;

constraint a != b; constraint a != c;
constraint a != d; constraint a != e;
constraint a != f; constraint a != g;
constraint a != h; constraint a != i;

constraint b != c; constraint b != d;
constraint b != e; constraint b != f;
constraint b != g; constraint b != h;
constraint b != i;

constraint c != d; constraint c != e;
constraint c != f; constraint c != g;
constraint c != h; constraint c != i;

constraint d != e; constraint d != f;
constraint d != g; constraint d != h;
constraint d != i;

constraint e != f; constraint e != g;
constraint e != h; constraint e != i;

constraint f != g; constraint f != h;
constraint f != i;

constraint g != h; constraint g != i;

constraint h != i;

constraint a div (b*c) + d div (e*f) + g div (h*i) = 1;

solve satisfy;

output ["A: ", show(a), "\t B: ", show(b), "\t C: ", show(c), "\t D: ", show(d), "\t E: ", show(e),
        "\nF: ", show(f), "\t G: ", show(g), "\t H: ", show(h), "\t I: ", show(i), "\n"];
