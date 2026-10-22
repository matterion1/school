type Tpoint = array[1..2] of longint;
type Tarr = array[1..100] of Tpoint;


procedure swap(var x,y:Tpoint);
var temp:Tpoint;
begin
  temp := x;
  x := y;
  y := temp;
end;

procedure bubble(var arr:Tarr; N:longint);
var i:longint; sorted:boolean;
begin
  sorted := false;
  while (not sorted) do
  begin
    sorted := true;
    for i := 1 to N - 1 do
    begin
      if arr[i, 2] > arr[i + 1, 2]
      then begin
        swap(arr[i], arr[i + 1]);
        sorted := false;
      end;
    end;
  end;
end;


procedure read_arr(var arr:Tarr; var N:longint);
var i :longint;
begin
  read(N);
  for i := 1 to N do
  begin
    arr[i, 1] := i;
    read(arr[i, 2]);
  end;
end;

function min_pair(var arr:Tarr; N:longint):longint;
var i,etalon:longint;
begin
  etalon := 1;
  for i := 2 to N - 1 do
  begin
    if arr[i + 1, 2] - arr[i, 2] < arr[etalon + 1, 2] - arr[etalon, 2]
    then etalon := i;
  end;
  min_pair:= etalon;
end;

function max_pair(var arr:Tarr; N:longint):longint;
var i,etalon:longint;
begin
  etalon := 1;
  for i := 2 to N - 1 do
  begin
    if arr[i + 1, 2] - arr[i, 2] > arr[etalon + 1, 2] - arr[etalon, 2]
    then etalon := i;
  end;
  max_pair:= etalon;
end;



procedure write_arr(var arr:Tarr; var N:longint);
var i :longint;
begin
  for i := 1 to N do
  begin
    write(arr[i, 1], ' ');
  end;
end;

var arr:Tarr; N, min_first, max_first:longint;
begin
  read_arr(arr, N);
  bubble(arr, N);
  min_first := min_pair(arr, N);
  max_first := max_pair(arr, N);
  writeln(arr[min_first + 1, 2] - arr[min_first, 2], ' ', arr[min_first, 1], ' ', arr[min_first + 1, 1]);
  writeln(arr[max_first + 1, 2] - arr[max_first, 2], ' ', arr[max_first, 1], ' ', arr[max_first + 1, 1]);
end.
