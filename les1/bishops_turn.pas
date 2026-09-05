var row, col, temp_r, temp_c:longint;


begin
  read(row, col);
  
  temp_r := row;
  temp_c := col;
  while (temp_r < 8) and (temp_c < 8) do
  begin
    inc(temp_r);
    inc(temp_c);
    writeln(temp_r, ' ',temp_c);
  end;
  
  temp_r := row;
  temp_c := col;
  while (temp_r > 1) and (temp_c > 1) do
  begin
    dec(temp_r);
    dec(temp_c);
    writeln(temp_r, ' ',temp_c);
  end;
  
  
  temp_r := row;
  temp_c := col;
  while (temp_r > 1) and (temp_c < 8) do
  begin
    dec(temp_r);
    inc(temp_c);
    writeln(temp_r, ' ',temp_c);
  end;
  
  temp_r := row;
  temp_c := col;
  while (temp_r < 8) and (temp_c > 1) do
  begin
    inc(temp_r);
    dec(temp_c);
    writeln(temp_r, ' ',temp_c);
  end;
end.
