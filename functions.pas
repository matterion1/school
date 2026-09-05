procedure line_char(n:longint; border,fill_char:char);
var i:longint;
begin
  if n > 1
  then begin
         write(border);
         for i := 1 to n - 2 do
           write(fill_char,' ');
         writeln(border);
  end;
end;


procedure write_arr(var arr:Tarr; var N:longint);
var i :longint;
begin
  for i := 1 to N do
  begin
    write(arr[i], ' ');
  end;
  writeln();
end;

procedure read_arr(var arr:Tarr; var N:longint);
var i :longint;
begin
  read(N);
  for i := 1 to N do
  begin
    read(arr[i]);
  end;
end;

procedure reverse_arr(var arr:Tarr; N:longint);
var i:longint;
begin
  for i := 1 to N div 2 do
  begin
    swap(arr[i], arr[n-i+1]);
  end;
end;

procedure delete(var arr:Tarr; var N,pos:longint);
var i:longint;
begin
  for i := pos to N - 1 do
    arr[i] := arr[i + 1];
  N := N -1;
end;


function min_index(var arr:Tarr; N:longint):longint;
var i,etalon:longint;
begin
  etalon := 1;
  for i := 2 to N do
  begin
    if arr[i] < arr[etalon]
    then etalon := i;
  end;
  min_index := etalon;
end;

function max_index(var arr:Tarr; N:longint):longint;
var i,etalon:longint;
begin
  etalon := 1;
  for i := 2 to N do
  begin
    if arr[i] >= arr[etalon]
    then etalon := i;
  end;
  max_index := etalon;
end;

procedure insert(var arr:Tarr; var N, pos, ins_value:longint);
var i:longint;
begin
  N := N + 1;
  for i:= N downto pos do
    arr[i + 1] := arr[i];
  arr[pos] := ins_value;
end;

procedure replace(var arr:Tarr; left, right, before_val, after_val:longint);
var i:longint;
begin
  for i := left to right do
  begin
    if arr[i] = before_val
    then arr[i] := after_val;
  end;
end;


procedure read_arr2(var arr2:Tarr2; var row,col:longint);
var i,j:longint;
begin
  read(row, col);
  for i := 1 to row do
  begin
    for j := 1 to col do
    begin
      read(arr2[i,j]);
    end;
  end;
end;

procedure write_arr2(var arr2:Tarr2; var row,col:longint);
var i,j:longint;
begin
  for i := 1 to row do
  begin
    for j := 1 to col do
    begin
      write(arr2[i,j],' ');
    end;
    writeln();
  end;
  writeln();
end;


procedure generate_arr2(var arr2:Tarr2; var row,col:longint);
var i,j,cnt:longint;
begin
  read(row, col);
  cnt := 1;
  for i := 1 to row do
  begin
    if i mod 2 = 0
    then begin
      for j := col downto 1 do
      begin
        arr2[i, j] := cnt;
        inc(cnt);
      end;
    end
    else begin
      for j := 1 to col do
      begin
        arr2[i, j] := cnt;
        inc(cnt);
      end;
    end;
  end;
end;
