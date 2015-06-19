
% Problema 4

var 1..20: m; % Numero de ascensores
int: k;       % Numero de pisos adicionales
int: n;       % Numero de pisos totales

array[1..20,1..n-2] of var bool: ascensores;  % Los pisos donde llega cada ascensor

constraint forall(x in 1..n-2, y in 1..n-2)(
  exists(i in 1..m) (ascensores[i,x] /\ ascensores[i,y]) 
); 

constraint forall(i in 1..m)(
  k == sum (j in 1..n-2) (ascensores[i,j]) 
);

solve satisfy;

output [show(ascensores[i,j]) ++ 
        if j == n-2 then "\n" else " " endif |
        i in 1..fix(m), j in 1..n-2];