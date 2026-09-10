type Tarr = array[1..100] of longint;



function sum_dig(N:longint):longint;
var res:longint;
begin
  res := 0;
  N := abs(N);
  while N <> 0 do
  begin
    res := res + N mod 10;
    N := N div 10;
  end;
  sum_dig := res;
end;

function max_sum_dig(var arr:Tarr; N:longint):longint;
var i,etalon:longint;
begin
  etalon := 1;
  for i := 2 to N do
  begin
    if sum_dig(arr[i]) > sum_dig(arr[etalon])
    then etalon := i
    else if sum_dig(arr[i]) = sum_dig(arr[etalon])
         then if arr[i] > arr[etalon]
              then etalon := i;
  end;
  max_sum_dig := etalon;
end;


function min_sum_dig(var arr:Tarr; N:longint):longint;
var i,etalon:longint;
begin
  etalon := 1;
  for i := 2 to N do
  begin
    if sum_dig(arr[i]) < sum_dig(arr[etalon])
    then etalon := i
    else if sum_dig(arr[i]) = sum_dig(arr[etalon])
         then if arr[i] < arr[etalon]
              then etalon := i;
  end;
  min_sum_dig := etalon;
end;




procedure read_arr(var arr: Tarr; var N:longint);
var i :longint;
begin
  read(N);
  for i := 1 to N do
  begin
    read(arr[i]);
  end;
end;



procedure write_arr(var arr:Tarr; var N:longint);
var i :longint;
begin
  writeln(N);
  for i := 1 to N do
  begin
    write(arr[i], ' ');
  end;
  writeln();
end;



var arr:Tarr; N:longint;

begin
  read_arr(arr, N);
  writeln(arr[min_sum_dig(arr, N)]);
  writeln(arr[max_sum_dig(arr, N)]);
end.
