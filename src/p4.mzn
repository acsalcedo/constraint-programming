
% Problema 4

var 1..8: m; % Numero de ascensores
int: k;       % Numero de pisos adicionales
int: n;       % Numero de pisos totales

array[1..8,1..n-2] of var 0..1: ascensores;  % Los pisos donde llega cada ascensor

% Debe existir un ascensor tal que se puede llegar de un piso a cualquier otro
constraint forall(x in 1..n-2, y in 1..n-2 where x < y)(
  exists(i in 1..m) (ascensores[i,x] = 1 /\ ascensores[i,y] = 1) 
); 

% Cada ascensor debe tener k pisos adicionales
constraint forall(i in 1..m)(
  k == sum (j in 1..n-2) (ascensores[i,j]) 
);

solve satisfy;

output ["Numero de ascensores: ", show(m), "\n"] ++
       [show(ascensores[i,j]) ++ 
        if j == n-2 then "\n" else " " endif |
        i in 1..fix(m), j in 1..n-2];