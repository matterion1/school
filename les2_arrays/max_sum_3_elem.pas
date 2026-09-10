type Tarr = array[1..100] of longint;


procedure read_arr(var arr: Tarr; var N:longint);
var i :longint;
begin
  read(N);
  for i := 1 to N do
  begin
    read(arr[i]);
  end;
end;


function max_index(var arr:Tarr; N:longint):longint;
var i,etalon:longint;
begin
  etalon := 1;
  for i := 2 to N do
  begin
    if arr[i] > arr[etalon]
    then etalon := i;
  end;
  max_index := etalon;
end;

procedure replace(var arr:Tarr; N, before_val, after_val:longint);
var i:longint;
begin
  for i := 1 to N do
  begin
    if arr[i] = before_val
    then arr[i] := after_val;
  end;
end;

function max_sum_3(arr:Tarr; N:longint):longint;
var res, max, i:longint;
begin
  res := 0;
  for i := 1 to 3 do
  begin
    max := max_index(arr, N);
    res := res + arr[max];
    replace(arr, N, arr[max], -101);
  end;
  max_sum_3 := res;
end;



var arr:Tarr; N, res:longint;

begin
  read_arr(arr, N);
  res := max_sum_3(arr, N);
  writeln(res);
end.
