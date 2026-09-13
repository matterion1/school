type Tarr = array[1..100] of longint;

procedure read_arr(var arr:Tarr; var N:longint);
var i :longint;
begin
  read(N);
  for i := 1 to N do
  begin
    read(arr[i]);
  end;
end;

function min_index(var arr:Tarr; N, l, r:longint):longint;
var i,etalon:longint;
begin
  etalon := l;
  for i := l + 1 to r do
  begin
    if arr[i] < arr[etalon]
    then etalon := i;
  end;
  min_index := etalon;
end;


function find_odd(arr:Tarr; N, start:longint):longint;
var i:longint;
begin
  i := start + 1;
  while (arr[i] mod 2 = 0) and (i < N) do
  begin
    inc(i);
  end;
  find_odd := i;
end;

var arr:Tarr; first_odd, second_odd, N, res:longint;

begin
  read_arr(arr, N);
  
  first_odd := find_odd(arr, N, 0);
  second_odd := find_odd(arr, N, first_odd);
  
  res := arr[min_index(arr, N, first_odd, second_odd)];
  writeln(res);
end.
