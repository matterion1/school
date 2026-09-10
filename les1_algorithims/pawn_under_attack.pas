

function can_bish(r1, c1, r2, c2:longint):boolean;
begin
  can_bish := (abs(r1 - r2) = abs(c1 - c2));
end;

function can_castle(r1, c1, r2, c2:longint):boolean;
begin
  can_castle := ((r1 = r2) or (c1 = c2));
end;

function can_knight(r1, c1, r2, c2:longint):boolean;
begin
  can_knight := ((((abs(r1 - r2)) = 2) and ((abs(c1 - c2)) = 1)) or (((abs(r1 - r2)) = 1) and ((abs(c1 - c2)) = 2)));
end;

function can_queen(r1, c1, r2, c2:longint):boolean;
begin
  can_queen := can_bish(r1, c1, r2, c2) or can_castle(r1, c1, r2, c2);
end;


var row_p, col_p, row_f, col_f:longint;



begin
  read(row_f, col_f, row_p, col_p);
  if (row_f < 1) or (row_f > 8) or (col_f < 1) or (col_f > 8) or (row_p < 1) or (row_p > 8) or (col_p < 1) or (col_p > 8)
  then writeln('Incorrect data.')
  else begin
  
    if can_bish(row_p, col_p, row_f, col_f)
    then writeln('Bishop.');
    
    if can_castle(row_p, col_p, row_f, col_f)
    then writeln('Castle.');
    
    if can_knight(row_p, col_p, row_f, col_f)
    then writeln('Knight.');
    
    if can_queen(row_p, col_p, row_f, col_f)
    then writeln('Queen.');
    
    if not((can_bish(row_p, col_p, row_f, col_f)) or (can_castle(row_p, col_p, row_f, col_f)) or (can_knight(row_p, col_p, row_f, col_f)) or (can_queen(row_p, col_p, row_f, col_f)))
    then writeln('The pawn is not under attack.');
  end;
    
end.
