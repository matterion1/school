type Tfrac = array[1..2] of longint;
type Tarr = array[1..100] of Tfrac;

procedure swap(var a, b:Tfrac);
var temp:Tfrac;
begin
  temp := a;
  a := b;
  b := temp;
end;

procedure read_arr(var arr:Tarr; var N:longint);
var i:longint;
begin
  read(N);
  for i := 1 to N do
  begin
    read(arr[i, 1], arr[i, 2]);
  end;
end;

procedure write_arr(var arr:Tarr; N:longint);
var  i:longint;
begin
  for i := 1 to N do
  begin
    writeln(arr[i, 1],' ' ,arr[i, 2]);
  end;
end;


function compare(a, b:Tfrac):boolean;
begin
  if (a[2] < 0) = (b[2] < 0)
  then compare := a[1] * b[2] > a[2] * b[1]
  else compare := a[1] * b[2] < a[2] * b[1]
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
      if compare(arr[i], arr[i + 1])
      then begin
        swap(arr[i], arr[i + 1]);
        sorted := false;
      end;
    end;
  end;
end;


var arr:Tarr; N:longint;
begin
  read_arr(arr, N);
  bubble(arr, N);
  write_arr(arr, N);
end.
