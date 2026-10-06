type Tarr = array[1..1000] of longint;


procedure read_arr(var arr:Tarr; var N:longint);
var i :longint;
begin
  read(N);
  for i := 1 to N * 2 do
  begin
    read(arr[i]);
  end;
end;

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
  for i := 1 to 2 * N do
  begin
    write(arr[i], ' ');
  end;
  writeln();
end;

procedure bubble_not_dec(var arr:Tarr; N:longint);
var i, cnt:longint; sorted:boolean;
begin
  cnt := 0;
  sorted := false;
  while (not sorted) do
  begin
    sorted := true;
    for i := 1 to N - 1 do
    begin
      if arr[i] > arr[i + 1]
      then begin
        swap(arr[i], arr[i + 1]);
        sorted := false;
      end;
    end;
  end;
end;

procedure bubble_not_inc(var arr:Tarr; N:longint);
var i, cnt:longint; sorted:boolean;
begin
  cnt := 0;
  sorted := false;
  while (not sorted) do
  begin
    sorted := true;
    for i := N + 1 to 2 * N - 1 do
    begin
      if arr[i] < arr[i + 1]
      then begin
        swap(arr[i], arr[i + 1]);
        sorted := false;
      end;
    end;
  end;
end;



var arr:Tarr; N, res:longint;
begin
  read_arr(arr, N);
  
  bubble_not_dec(arr, N);
  bubble_not_inc(arr, N);
  
  write_arr(arr, N);
end.


