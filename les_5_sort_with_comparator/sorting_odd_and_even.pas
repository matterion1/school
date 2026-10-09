type Tarr = array[1..100] of longint;

procedure swap(var x,y:longint);
var temp:longint;
begin
  temp := x;
  x := y;
  y := temp;
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

function compare(a, b:longint):boolean;
begin
  if abs(a) mod 2 > abs(b) mod 2 
  then compare := true
  else if abs(a) mod 2 < abs(b) mod 2 
       then compare := false
       else compare := a > b
end;


procedure bubble(var arr:Tarr; N:longint);
var i, j:longint; 
begin
  for i := 1 to N -1 do
  begin
    for j := 1 to N - i do
    begin
      if compare(arr[j], arr[j + 1])
      then swap(arr[j], arr[j + 1])
    end;
  end;
end;




var arr:Tarr; N:longint;
begin
  read_arr(arr, N);
  bubble(arr, N);
  write_arr(arr, N);
end.
