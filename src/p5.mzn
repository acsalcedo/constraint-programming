int: rows;
int: columns;

array[1..rows, 1..columns] of var string: tiles;

constraint exists(x in 1..rows, y in 1..columns) 
  (tiles[x,y] = "f" /\ 
  (tiles[x,y] = tiles[x,y+1] /\ tiles[x,y] = tiles[x+1,y+1] /\ tiles[x,y] = tiles[x-1,y+1] /\ tiles[x,y] = tiles[x-1,y+2]) \/
  (tiles[x,y] = tiles[x-1,y] /\ tiles[x,y] = tiles[x-1,y+1] /\ tiles[x,y] = tiles[x-1,y-1] /\ tiles[x,y] = tiles[x-2,y-1]) \/
  (tiles[x,y] = tiles[x,y-1] /\ tiles[x,y] = tiles[x-1,y-1] /\ tiles[x,y] = tiles[x+1,y-1] /\ tiles[x,y] = tiles[x+1,y-2]) \/
  (tiles[x,y] = tiles[x+1,y] /\ tiles[x,y] = tiles[x+1,y-1] /\ tiles[x,y] = tiles[x+1,y+1] /\ tiles[x,y] = tiles[x+2,y+1])  
);
constraint exists(x in 1..rows, y in 1..columns) 
  (tiles[x,y] = "i" /\ 
  (tiles[x,y] = tiles[x+1,y] /\ tiles[x,y] = tiles[x+2,y] /\ tiles[x,y] = tiles[x+3,y] /\ tiles[x,y] = tiles[x+4,y]) \/
  (tiles[x,y] = tiles[x,y+1] /\ tiles[x,y] = tiles[x,y+2] /\ tiles[x,y] = tiles[x,y+3] /\ tiles[x,y] = tiles[x,y+4]) \/
  (tiles[x,y] = tiles[x-1,y] /\ tiles[x,y] = tiles[x-2,y] /\ tiles[x,y] = tiles[x-3,y] /\ tiles[x,y] = tiles[x-4,y]) \/
  (tiles[x,y] = tiles[x,y-1] /\ tiles[x,y] = tiles[x,y-2] /\ tiles[x,y] = tiles[x,y-3] /\ tiles[x,y] = tiles[x,y-4])
);

constraint exists(x in 1..rows, y in 1..columns) 
  (tiles[x,y] = "l" /\ 
  (tiles[x,y] = tiles[x+1,y] /\ tiles[x,y] = tiles[x+2,y] /\ tiles[x,y] = tiles[x+3,y] /\ tiles[x,y] = tiles[x+3,y+1]) \/
  (tiles[x,y] = tiles[x,y+1] /\ tiles[x,y] = tiles[x,y+2] /\ tiles[x,y] = tiles[x,y+3] /\ tiles[x,y] = tiles[x-1,y+3]) \/
  (tiles[x,y] = tiles[x-1,y] /\ tiles[x,y] = tiles[x-2,y] /\ tiles[x,y] = tiles[x-3,y] /\ tiles[x,y] = tiles[x-3,y-1]) \/
  (tiles[x,y] = tiles[x,y-1] /\ tiles[x,y] = tiles[x,y-2] /\ tiles[x,y] = tiles[x,y-3] /\ tiles[x,y] = tiles[x+1,y-3])
);

constraint exists(x in 1..rows, y in 1..columns) 
  (tiles[x,y] = "n" /\
  (tiles[x,y] = tiles[x+1,y] /\ tiles[x,y] = tiles[x+2,y] /\ tiles[x,y] = tiles[x+2,y-1] /\ tiles[x,y] = tiles[x+3,y-1]) \/
  (tiles[x,y] = tiles[x,y+1] /\ tiles[x,y] = tiles[x,y+2] /\ tiles[x,y] = tiles[x+1,y+2] /\ tiles[x,y] = tiles[x+1,y+3]) \/
  (tiles[x,y] = tiles[x-1,y] /\ tiles[x,y] = tiles[x-2,y] /\ tiles[x,y] = tiles[x-2,y+1] /\ tiles[x,y] = tiles[x-3,y+1]) \/
  (tiles[x,y] = tiles[x,y-1] /\ tiles[x,y] = tiles[x,y-2] /\ tiles[x,y] = tiles[x-1,y-2] /\ tiles[x,y] = tiles[x-1,y-3])
);


constraint exists(x in 1..rows, y in 1..columns) 
  (tiles[x,y] = "p" /\
  (tiles[x,y] = tiles[x,y+1] /\ tiles[x,y] = tiles[x+1,y] /\ tiles[x,y] = tiles[x+1,y+1] /\ tiles[x,y] = tiles[x+2,y]) \/
  (tiles[x,y] = tiles[x-1,y] /\ tiles[x,y] = tiles[x,y+1] /\ tiles[x,y] = tiles[x-1,y+1] /\ tiles[x,y] = tiles[x,y+2]) \/
  (tiles[x,y] = tiles[x,y-1] /\ tiles[x,y] = tiles[x-1,y] /\ tiles[x,y] = tiles[x-1,y-1] /\ tiles[x,y] = tiles[x-2,y]) \/
  (tiles[x,y] = tiles[x+1,y] /\ tiles[x,y] = tiles[x,y-1] /\ tiles[x,y] = tiles[x+1,y-1] /\ tiles[x,y] = tiles[x,y-2])
);

constraint exists(x in 1..rows, y in 1..columns) 
  (tiles[x,y] = "t" /\
  (tiles[x,y] = tiles[x,y+1] /\ tiles[x,y] = tiles[x,y+2] /\ tiles[x,y] = tiles[x+1,y+1] /\ tiles[x,y] = tiles[x+2,y+1]) \/
  (tiles[x,y] = tiles[x-1,y] /\ tiles[x,y] = tiles[x-2,y] /\ tiles[x,y] = tiles[x-1,y+1] /\ tiles[x,y] = tiles[x-1,y+2]) \/
  (tiles[x,y] = tiles[x,y-1] /\ tiles[x,y] = tiles[x,y-2] /\ tiles[x,y] = tiles[x-1,y-1] /\ tiles[x,y] = tiles[x-2,y-1]) \/
  (tiles[x,y] = tiles[x+1,y] /\ tiles[x,y] = tiles[x+2,y] /\ tiles[x,y] = tiles[x+1,y-1] /\ tiles[x,y] = tiles[x+1,y-2])
);

constraint exists(x in 1..rows, y in 1..columns) 
  (tiles[x,y] = "u" /\
  (tiles[x,y] = tiles[x+1,y] /\ tiles[x,y] = tiles[x+1,y+1] /\ tiles[x,y] = tiles[x+1,y+2] /\ tiles[x,y] = tiles[x,y+2]) \/
  (tiles[x,y] = tiles[x,y+1] /\ tiles[x,y] = tiles[x-1,y+1] /\ tiles[x,y] = tiles[x-2,y+1] /\ tiles[x,y] = tiles[x-2,y]) \/
  (tiles[x,y] = tiles[x-1,y] /\ tiles[x,y] = tiles[x-1,y-1] /\ tiles[x,y] = tiles[x-1,y-2] /\ tiles[x,y] = tiles[x,y-2]) \/
  (tiles[x,y] = tiles[x,y-1] /\ tiles[x,y] = tiles[x+1,y-1] /\ tiles[x,y] = tiles[x+2,y-1] /\ tiles[x,y] = tiles[x+2,y]) 
);

constraint exists(x in 1..rows, y in 1..columns) 
  (tiles[x,y] = "v" /\
  (tiles[x,y] = tiles[x+1,y] /\ tiles[x,y] = tiles[x+2,y] /\ tiles[x,y] = tiles[x+2,y+1] /\ tiles[x,y] = tiles[x+2,y+2]) \/
  (tiles[x,y] = tiles[x,y+1] /\ tiles[x,y] = tiles[x,y+2] /\ tiles[x,y] = tiles[x-1,y+2] /\ tiles[x,y] = tiles[x-2,y+2]) \/
  (tiles[x,y] = tiles[x-1,y] /\ tiles[x,y] = tiles[x-2,y] /\ tiles[x,y] = tiles[x-2,y-1] /\ tiles[x,y] = tiles[x-2,y-2]) \/
  (tiles[x,y] = tiles[x,y-1] /\ tiles[x,y] = tiles[x,y-2] /\ tiles[x,y] = tiles[x+1,y-2] /\ tiles[x,y] = tiles[x+2,y-2])
);

constraint exists(x in 1..rows, y in 1..columns) 
  (tiles[x,y] = "w" /\
  (tiles[x,y] = tiles[x+1,y] /\ tiles[x,y] = tiles[x+1,y+1] /\ tiles[x,y] = tiles[x+2,y+1] /\ tiles[x,y] = tiles[x+2,y+2]) \/
  (tiles[x,y] = tiles[x,y+1] /\ tiles[x,y] = tiles[x-1,y+1] /\ tiles[x,y] = tiles[x-1,y+2] /\ tiles[x,y] = tiles[x-2,y+2]) \/
  (tiles[x,y] = tiles[x-1,y] /\ tiles[x,y] = tiles[x-1,y-1] /\ tiles[x,y] = tiles[x-2,y-1] /\ tiles[x,y] = tiles[x-2,y-2]) \/
  (tiles[x,y] = tiles[x,y-1] /\ tiles[x,y] = tiles[x+1,y-1] /\ tiles[x,y] = tiles[x+1,y-2] /\ tiles[x,y] = tiles[x+2,y-2])
);

% No se si son necesarias todas las rotaciones...
constraint exists(x in 1..rows, y in 1..columns) 
  (tiles[x,y] = "x" /\
  (tiles[x,y] = tiles[x,y+1] /\ tiles[x,y] = tiles[x,y+2] /\ tiles[x,y] = tiles[x-1,y+1] /\ tiles[x,y] = tiles[x+1,y+1]) \/
  (tiles[x,y] = tiles[x-1,y] /\ tiles[x,y] = tiles[x-2,y] /\ tiles[x,y] = tiles[x-1,y-1] /\ tiles[x,y] = tiles[x-1,y+1]) \/
  (tiles[x,y] = tiles[x,y-1] /\ tiles[x,y] = tiles[x,y-2] /\ tiles[x,y] = tiles[x+1,y-1] /\ tiles[x,y] = tiles[x-1,y-1]) \/
  (tiles[x,y] = tiles[x+1,y] /\ tiles[x,y] = tiles[x+2,y] /\ tiles[x,y] = tiles[x+1,y+1] /\ tiles[x,y] = tiles[x+1,y-1])
);

constraint exists(x in 1..rows, y in 1..columns) 
  (tiles[x,y] = "y" /\
  (tiles[x,y] = tiles[x-1,y+1] /\ tiles[x,y] = tiles[x,y+1] /\ tiles[x,y] = tiles[x+1,y+1] /\ tiles[x,y] = tiles[x+2,y+1]) \/
  (tiles[x,y] = tiles[x-1,y-1] /\ tiles[x,y] = tiles[x-1,y] /\ tiles[x,y] = tiles[x-1,y+1] /\ tiles[x,y] = tiles[x-1,y+2]) \/
  (tiles[x,y] = tiles[x+1,y-1] /\ tiles[x,y] = tiles[x,y-1] /\ tiles[x,y] = tiles[x-1,y-1] /\ tiles[x,y] = tiles[x-2,y-1]) \/
  (tiles[x,y] = tiles[x+1,y+1] /\ tiles[x,y] = tiles[x+1,y] /\ tiles[x,y] = tiles[x+1,y-1] /\ tiles[x,y] = tiles[x+1,y-2])
);

constraint exists(x in 1..rows, y in 1..columns) 
  (tiles[x,y] = "z" /\
  (tiles[x,y] = tiles[x,y+1] /\ tiles[x,y] = tiles[x+1,y+1] /\ tiles[x,y] = tiles[x+2,y+1] /\ tiles[x,y] = tiles[x+2,y+2]) \/
  (tiles[x,y] = tiles[x-1,y] /\ tiles[x,y] = tiles[x-1,y+1] /\ tiles[x,y] = tiles[x-1,y+2] /\ tiles[x,y] = tiles[x-2,y+2]) \/
  (tiles[x,y] = tiles[x,y-1] /\ tiles[x,y] = tiles[x-1,y-1] /\ tiles[x,y] = tiles[x-2,y-1] /\ tiles[x,y] = tiles[x-2,y-2]) \/
  (tiles[x,y] = tiles[x+1,y] /\ tiles[x,y] = tiles[x+1,y-1] /\ tiles[x,y] = tiles[x+1,y-2] /\ tiles[x,y] = tiles[x+2,y-2])

);

solve satisfy;