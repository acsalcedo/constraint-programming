include "alldifferent.mzn";

var int: m;
int: k;
int: n;
var int: x;
var int: y;
%array[1..2+k] of var int:ascensor;
array[1..m,1..2+k] of var int: ascensores;

% constraint forall(x in 1..n, y in 1..n) (
%   exists(i in 1..m,j in 1..2+k) (ascensores[i,j] = x /\ ascensores[i,k] = y) 
% ); 

constraint n=6;
constraint k=3;

solve minimize m;

output [show(m)]