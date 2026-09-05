function max(n1,n2:longint):longint;
begin
  if n1 > n2
  then max := n1
  else max := n2;
end;

procedure swap(var x,y:longint);
var temp:longint;
begin
  temp := x;
  x := y;
  y := temp;
end;

procedure sort_not_falling(var a,b,c:longint);
begin
  if a > b
  then swap(a,b);
  if a > c
  then swap(a,c);
  if b > c
  then swap(b,c);
end;

var cell1,cell2,cell3:longint;
procedure swap(var x,y:longint);
var temp:longint;
begin
  temp := x;
  x := y;
  y := temp;
end;

procedure sort_not_falling(var a,b,c:longint);
begin
  if a > b
  then swap(a,b);
  if a > c
  then swap(a,c);
  if b > c
  then swap(b,c);
end;

function cnt_day_in_mon(mon,year:longint):byte;
begin
  case mon of
    2: if (year mod 4 = 0) and (year mod 100 <> 0) or (year mod 400 = 0)
       then cnt_day_in_mon := 29
       else cnt_day_in_mon := 28;
    4,6,9,11:cnt_day_in_mon := 30;
  else cnt_day_in_mon := 31;
  end;
end;
function cnt_days_in_year(year:longint):longint;
begin
  if (year mod 4 = 0) and (year mod 100 <> 0) or (year mod 400 = 0)
  then cnt_days_in_year := 366
  else cnt_days_in_year := 365;
end;

function is_prime(N:longint):boolean;
var i:longint;
begin
  i := 3;
  if (N = 2) or (N = 3)
  then is_prime := true
  else if (N mod 2 = 0) or (N <= 1)
       then is_prime := false
       else begin
         while (sqr(i) <= N) and (N mod i <> 0) do
         begin
           i := i + 2;
         end;
         if N mod i <> 0 
         then is_prime := true
         else is_prime := false;
       end;
end;




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
