int: rows;
int: columns;

array[1..rows, 1..columns] of var 0..12: tiles;

% Letra F
constraint exists(x in 1..rows, y in 1..columns) 
  (tiles[x,y] = 1 /\ ( 
  % Rotaciones
  (tiles[x,y] = tiles[x,y+1] /\ tiles[x,y] = tiles[x+1,y+1] /\ tiles[x,y] = tiles[x-1,y+1] /\ tiles[x,y] = tiles[x-1,y+2]) \/
  (tiles[x,y] = tiles[x-1,y] /\ tiles[x,y] = tiles[x-1,y+1] /\ tiles[x,y] = tiles[x-1,y-1] /\ tiles[x,y] = tiles[x-2,y-1]) \/
  (tiles[x,y] = tiles[x,y-1] /\ tiles[x,y] = tiles[x-1,y-1] /\ tiles[x,y] = tiles[x+1,y-1] /\ tiles[x,y] = tiles[x+1,y-2]) \/
  (tiles[x,y] = tiles[x+1,y] /\ tiles[x,y] = tiles[x+1,y-1] /\ tiles[x,y] = tiles[x+1,y+1] /\ tiles[x,y] = tiles[x+2,y+1]) \/
  % Simetria  
  (tiles[x,y] = tiles[x,y-1] /\ tiles[x,y] = tiles[x+1,y-1] /\ tiles[x,y] = tiles[x-1,y-1] /\ tiles[x,y] = tiles[x-1,y-2]) \/
  (tiles[x,y] = tiles[x,y+1] /\ tiles[x,y] = tiles[x-1,y+1] /\ tiles[x,y] = tiles[x+1,y+1] /\ tiles[x,y] = tiles[x+1,y+2]) \/
  (tiles[x,y] = tiles[x-1,y] /\ tiles[x,y] = tiles[x-1,y-1] /\ tiles[x,y] = tiles[x-1,y+1] /\ tiles[x,y] = tiles[x-2,y+1]) \/
  (tiles[x,y] = tiles[x+1,y] /\ tiles[x,y] = tiles[x+1,y+1] /\ tiles[x,y] = tiles[x+1,y-1] /\ tiles[x,y] = tiles[x+2,y-1]))
);

% Letra I
constraint exists(x in 1..rows, y in 1..columns) 
  (tiles[x,y] = 2 /\ (
  % Rotaciones y Simetria
  (tiles[x,y] = tiles[x+1,y] /\ tiles[x,y] = tiles[x+2,y] /\ tiles[x,y] = tiles[x+3,y] /\ tiles[x,y] = tiles[x+4,y]) \/
  (tiles[x,y] = tiles[x,y+1] /\ tiles[x,y] = tiles[x,y+2] /\ tiles[x,y] = tiles[x,y+3] /\ tiles[x,y] = tiles[x,y+4]))
);

constraint exists(x in 1..rows, y in 1..columns) 
  (tiles[x,y] = 3 /\ (
  % Rotaciones
  (tiles[x,y] = tiles[x+1,y] /\ tiles[x,y] = tiles[x+2,y] /\ tiles[x,y] = tiles[x+3,y] /\ tiles[x,y] = tiles[x+3,y+1]) \/
  (tiles[x,y] = tiles[x,y+1] /\ tiles[x,y] = tiles[x,y+2] /\ tiles[x,y] = tiles[x,y+3] /\ tiles[x,y] = tiles[x-1,y+3]) \/
  (tiles[x,y] = tiles[x-1,y] /\ tiles[x,y] = tiles[x-2,y] /\ tiles[x,y] = tiles[x-3,y] /\ tiles[x,y] = tiles[x-3,y-1]) \/
  (tiles[x,y] = tiles[x,y-1] /\ tiles[x,y] = tiles[x,y-2] /\ tiles[x,y] = tiles[x,y-3] /\ tiles[x,y] = tiles[x+1,y-3]) \/
  % Simetria
  (tiles[x,y] = tiles[x,y-1] /\ tiles[x,y] = tiles[x,y-2] /\ tiles[x,y] = tiles[x,y-3] /\ tiles[x,y] = tiles[x-1,y-3]) \/
  (tiles[x,y] = tiles[x,y+1] /\ tiles[x,y] = tiles[x,y+2] /\ tiles[x,y] = tiles[x,y+3] /\ tiles[x,y] = tiles[x+1,y+3]) \/
  (tiles[x,y] = tiles[x-1,y] /\ tiles[x,y] = tiles[x-2,y] /\ tiles[x,y] = tiles[x-3,y] /\ tiles[x,y] = tiles[x-3,y+1]) \/
  (tiles[x,y] = tiles[x,y-1] /\ tiles[x,y] = tiles[x,y-2] /\ tiles[x,y] = tiles[x,y-3] /\ tiles[x,y] = tiles[x-1,y-3])) 
);

% Letra N
constraint exists(x in 1..rows, y in 1..columns) 
  (tiles[x,y] = 4 /\ (
  % Rotaciones
  (tiles[x,y] = tiles[x+1,y] /\ tiles[x,y] = tiles[x+2,y] /\ tiles[x,y] = tiles[x+2,y-1] /\ tiles[x,y] = tiles[x+3,y-1]) \/
  (tiles[x,y] = tiles[x,y+1] /\ tiles[x,y] = tiles[x,y+2] /\ tiles[x,y] = tiles[x+1,y+2] /\ tiles[x,y] = tiles[x+1,y+3]) \/
  (tiles[x,y] = tiles[x-1,y] /\ tiles[x,y] = tiles[x-2,y] /\ tiles[x,y] = tiles[x-2,y+1] /\ tiles[x,y] = tiles[x-3,y+1]) \/
  (tiles[x,y] = tiles[x,y-1] /\ tiles[x,y] = tiles[x,y-2] /\ tiles[x,y] = tiles[x-1,y-2] /\ tiles[x,y] = tiles[x-1,y-3]) \/
  % Simetria
  (tiles[x,y] = tiles[x+1,y] /\ tiles[x,y] = tiles[x+2,y] /\ tiles[x,y] = tiles[x+2,y+1] /\ tiles[x,y] = tiles[x+3,y+1]) \/
  (tiles[x,y] = tiles[x,y+1] /\ tiles[x,y] = tiles[x,y+2] /\ tiles[x,y] = tiles[x-1,y+2] /\ tiles[x,y] = tiles[x-1,y+3]) \/
  (tiles[x,y] = tiles[x-1,y] /\ tiles[x,y] = tiles[x-2,y] /\ tiles[x,y] = tiles[x-2,y-1] /\ tiles[x,y] = tiles[x-3,y-1]) \/
  (tiles[x,y] = tiles[x,y-1] /\ tiles[x,y] = tiles[x,y-2] /\ tiles[x,y] = tiles[x+1,y-2] /\ tiles[x,y] = tiles[x+1,y-3]))
);

% Letra P
constraint exists(x in 1..rows, y in 1..columns) 
  (tiles[x,y] = 5 /\ (
  % Rotaciones
  (tiles[x,y] = tiles[x,y+1] /\ tiles[x,y] = tiles[x+1,y] /\ tiles[x,y] = tiles[x+1,y+1] /\ tiles[x,y] = tiles[x+2,y]) \/
  (tiles[x,y] = tiles[x-1,y] /\ tiles[x,y] = tiles[x,y+1] /\ tiles[x,y] = tiles[x-1,y+1] /\ tiles[x,y] = tiles[x,y+2]) \/
  (tiles[x,y] = tiles[x,y-1] /\ tiles[x,y] = tiles[x-1,y] /\ tiles[x,y] = tiles[x-1,y-1] /\ tiles[x,y] = tiles[x-2,y]) \/
  (tiles[x,y] = tiles[x+1,y] /\ tiles[x,y] = tiles[x,y-1] /\ tiles[x,y] = tiles[x+1,y-1] /\ tiles[x,y] = tiles[x,y-2]) \/
  % Simetria
  (tiles[x,y] = tiles[x,y-1] /\ tiles[x,y] = tiles[x+1,y] /\ tiles[x,y] = tiles[x+1,y-1] /\ tiles[x,y] = tiles[x+2,y]) \/
  (tiles[x,y] = tiles[x+1,y] /\ tiles[x,y] = tiles[x,y+1] /\ tiles[x,y] = tiles[x+1,y+1] /\ tiles[x,y] = tiles[x,y+2]) \/
  (tiles[x,y] = tiles[x,y+1] /\ tiles[x,y] = tiles[x-1,y] /\ tiles[x,y] = tiles[x-1,y+1] /\ tiles[x,y] = tiles[x-2,y]) \/
  (tiles[x,y] = tiles[x-1,y] /\ tiles[x,y] = tiles[x,y-1] /\ tiles[x,y] = tiles[x+1,y+1] /\ tiles[x,y] = tiles[x,y-2]))
);

% Letra T
constraint exists(x in 1..rows, y in 1..columns) 
  (tiles[x,y] = 6 /\ (
  % Rotaciones y Simetria
  (tiles[x,y] = tiles[x,y+1] /\ tiles[x,y] = tiles[x,y+2] /\ tiles[x,y] = tiles[x+1,y+1] /\ tiles[x,y] = tiles[x+2,y+1]) \/
  (tiles[x,y] = tiles[x-1,y] /\ tiles[x,y] = tiles[x-2,y] /\ tiles[x,y] = tiles[x-1,y+1] /\ tiles[x,y] = tiles[x-1,y+2]) \/
  (tiles[x,y] = tiles[x,y-1] /\ tiles[x,y] = tiles[x,y-2] /\ tiles[x,y] = tiles[x-1,y-1] /\ tiles[x,y] = tiles[x-2,y-1]) \/
  (tiles[x,y] = tiles[x+1,y] /\ tiles[x,y] = tiles[x+2,y] /\ tiles[x,y] = tiles[x+1,y-1] /\ tiles[x,y] = tiles[x+1,y-2]))
);

% Letra U
constraint exists(x in 1..rows, y in 1..columns) 
  (tiles[x,y] = 7 /\ (
  % Rotaciones y Simetria
  (tiles[x,y] = tiles[x+1,y] /\ tiles[x,y] = tiles[x+1,y+1] /\ tiles[x,y] = tiles[x+1,y+2] /\ tiles[x,y] = tiles[x,y+2]) \/
  (tiles[x,y] = tiles[x,y+1] /\ tiles[x,y] = tiles[x-1,y+1] /\ tiles[x,y] = tiles[x-2,y+1] /\ tiles[x,y] = tiles[x-2,y]) \/
  (tiles[x,y] = tiles[x-1,y] /\ tiles[x,y] = tiles[x-1,y-1] /\ tiles[x,y] = tiles[x-1,y-2] /\ tiles[x,y] = tiles[x,y-2]) \/
  (tiles[x,y] = tiles[x,y-1] /\ tiles[x,y] = tiles[x+1,y-1] /\ tiles[x,y] = tiles[x+2,y-1] /\ tiles[x,y] = tiles[x+2,y])) 
);

% Letra V
constraint exists(x in 1..rows, y in 1..columns) 
  (tiles[x,y] = 8 /\ (
  (tiles[x,y] = tiles[x+1,y] /\ tiles[x,y] = tiles[x+2,y] /\ tiles[x,y] = tiles[x+2,y+1] /\ tiles[x,y] = tiles[x+2,y+2]) \/
  (tiles[x,y] = tiles[x,y+1] /\ tiles[x,y] = tiles[x,y+2] /\ tiles[x,y] = tiles[x-1,y+2] /\ tiles[x,y] = tiles[x-2,y+2]) \/
  (tiles[x,y] = tiles[x-1,y] /\ tiles[x,y] = tiles[x-2,y] /\ tiles[x,y] = tiles[x-2,y-1] /\ tiles[x,y] = tiles[x-2,y-2]) \/
  (tiles[x,y] = tiles[x,y-1] /\ tiles[x,y] = tiles[x,y-2] /\ tiles[x,y] = tiles[x+1,y-2] /\ tiles[x,y] = tiles[x+2,y-2]))
);

% Letra W
constraint exists(x in 1..rows, y in 1..columns) 
  (tiles[x,y] = 9 /\ (
  % Rotaciones y Simetria
  (tiles[x,y] = tiles[x+1,y] /\ tiles[x,y] = tiles[x+1,y+1] /\ tiles[x,y] = tiles[x+2,y+1] /\ tiles[x,y] = tiles[x+2,y+2]) \/
  (tiles[x,y] = tiles[x,y+1] /\ tiles[x,y] = tiles[x-1,y+1] /\ tiles[x,y] = tiles[x-1,y+2] /\ tiles[x,y] = tiles[x-2,y+2]) \/
  (tiles[x,y] = tiles[x-1,y] /\ tiles[x,y] = tiles[x-1,y-1] /\ tiles[x,y] = tiles[x-2,y-1] /\ tiles[x,y] = tiles[x-2,y-2]) \/
  (tiles[x,y] = tiles[x,y-1] /\ tiles[x,y] = tiles[x+1,y-1] /\ tiles[x,y] = tiles[x+1,y-2] /\ tiles[x,y] = tiles[x+2,y-2]))
);

% Letra X
constraint exists(x in 1..rows, y in 1..columns) 
  (tiles[x,y] = 10 /\
  % Rotaciones y Simetria
  (tiles[x,y] = tiles[x,y+1] /\ tiles[x,y] = tiles[x,y+2] /\ tiles[x,y] = tiles[x-1,y+1] /\ tiles[x,y] = tiles[x+1,y+1])
);

% Letra Y
constraint exists(x in 1..rows, y in 1..columns) 
  (tiles[x,y] = 11 /\ (
  % Rotaciones
  (tiles[x,y] = tiles[x-1,y+1] /\ tiles[x,y] = tiles[x,y+1] /\ tiles[x,y] = tiles[x+1,y+1] /\ tiles[x,y] = tiles[x+2,y+1]) \/
  (tiles[x,y] = tiles[x-1,y-1] /\ tiles[x,y] = tiles[x-1,y] /\ tiles[x,y] = tiles[x-1,y+1] /\ tiles[x,y] = tiles[x-1,y+2]) \/
  (tiles[x,y] = tiles[x+1,y-1] /\ tiles[x,y] = tiles[x,y-1] /\ tiles[x,y] = tiles[x-1,y-1] /\ tiles[x,y] = tiles[x-2,y-1]) \/
  (tiles[x,y] = tiles[x+1,y+1] /\ tiles[x,y] = tiles[x+1,y] /\ tiles[x,y] = tiles[x+1,y-1] /\ tiles[x,y] = tiles[x+1,y-2]) \/
  % Simetria
  (tiles[x,y] = tiles[x-1,y-1] /\ tiles[x,y] = tiles[x,y-1] /\ tiles[x,y] = tiles[x+1,y-1] /\ tiles[x,y] = tiles[x+2,y-1]) \/
  (tiles[x,y] = tiles[x+1,y-1] /\ tiles[x,y] = tiles[x+1,y] /\ tiles[x,y] = tiles[x+1,y+1] /\ tiles[x,y] = tiles[x+1,y+2]) \/
  (tiles[x,y] = tiles[x+1,y+1] /\ tiles[x,y] = tiles[x,y+1] /\ tiles[x,y] = tiles[x-1,y+1] /\ tiles[x,y] = tiles[x-2,y+1]) \/
  (tiles[x,y] = tiles[x-1,y+1] /\ tiles[x,y] = tiles[x-1,y] /\ tiles[x,y] = tiles[x-1,y-1] /\ tiles[x,y] = tiles[x-1,y-2]))
);

% Letra Z
constraint exists(x in 1..rows, y in 1..columns) 
  (tiles[x,y] = 12 /\ (
  % Rotaciones
  (tiles[x,y] = tiles[x,y+1] /\ tiles[x,y] = tiles[x+1,y+1] /\ tiles[x,y] = tiles[x+2,y+1] /\ tiles[x,y] = tiles[x+2,y+2]) \/
  (tiles[x,y] = tiles[x-1,y] /\ tiles[x,y] = tiles[x-1,y+1] /\ tiles[x,y] = tiles[x-1,y+2] /\ tiles[x,y] = tiles[x-2,y+2]) \/
  % Simetria
  (tiles[x,y] = tiles[x,y-1] /\ tiles[x,y] = tiles[x+1,y-1] /\ tiles[x,y] = tiles[x+2,y-1] /\ tiles[x,y] = tiles[x+2,y-2]) \/
  (tiles[x,y] = tiles[x+1,y] /\ tiles[x,y] = tiles[x+1,y+1] /\ tiles[x,y] = tiles[x+1,y+2] /\ tiles[x,y] = tiles[x+2,y+2]))
);

solve satisfy;

output [] ++
       [if j = 1 then "\n" else " " endif
        ++ show(tiles[i,j]) |
        i in 1..rows, j in 1..columns
        ]