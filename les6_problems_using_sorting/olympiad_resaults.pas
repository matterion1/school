type Tparticipant = array[1..2] of longint;
type Tarr = array[1..100] of Tparticipant;


procedure swap(var x,y:Tparticipant);
var temp:Tparticipant;
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
      if arr[i, 2] < arr[i + 1, 2]
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


procedure write_arr(var arr:Tarr; var N:longint);
var i :longint;
begin
  for i := 1 to N do
  begin
    write(arr[i, 1], ' ');
  end;
end;

var arr:Tarr; N:longint;
begin
  read_arr(arr, N);
  bubble(arr, N);
  write_arr(arr, N);
end.
