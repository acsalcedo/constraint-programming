include "alldifferent.mzn";

% Una matriz del tablero
array[0..6, 0..6] of var 1..7: board;

% Valores fijos del tablero
constraint board[0,2] = 2;
constraint board[0,4] = 4;
constraint board[1,1] = 5;
constraint board[1,5] = 2;  
constraint board[2,6] = 6;
constraint board[3,1] = 7;
constraint board[3,5] = 5;
constraint board[4,6] = 7;
constraint board[5,1] = 6;
constraint board[5,5] = 4;
constraint board[6,2] = 1;
constraint board[6,4] = 2;

% Verifica que todas las filas y columnas tenga valores diferentes
constraint forall(i in 0..6) (
           alldifferent([board[i,0], board[i,1], board[i,2], board[i,3], board[i,4], board[i,5], board[i,6]]) /\
           alldifferent([board[0,i], board[1,i], board[2,i], board[3,i], board[4,i], board[5,i], board[6,i]])
);

% Revisa las posiciones del camino 1
constraint alldifferent([board[0,0], board[0,1], board[0,2], board[0,3], board[1,3], board[1,4], board[2,4]]);

% Revisa las posiciones del camino 2
constraint alldifferent([board[0,4], board[0,5], board[0,6], board[1,5], board[2,5], board[3,4], board[3,3]]);

% Revisa las posiciones del camino 3
constraint alldifferent([board[1,0], board[1,1], board[2,0], board[3,0], board[4,0], board[5,0], board[5,1]]);

% Revisa las posiciones del camino 4
constraint alldifferent([board[1,2], board[2,3], board[2,2], board[3,2], board[2,1], board[3,1], board[4,2]]);

% Revisa las posiciones del camino 5
constraint alldifferent([board[0,0], board[0,1], board[0,2], board[0,3], board[1,3], board[1,4], board[2,4]]);

% Revisa las posiciones del camino 6
constraint alldifferent([board[4,1], board[5,2], board[4,3], board[5,3], board[5,4], board[4,4], board[4,5]]);

% Revisa las posiciones del camino 7
constraint alldifferent([board[6,0], board[6,1], board[6,2], board[6,3], board[6,4], board[5,5], board[6,5]]);

solve satisfy;

output [show(board[i,j]) ++ 
        if j == 6 then "\n" else " " endif |
        i in 0..6, j in 0..6];