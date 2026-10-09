type Tarr = array[1..1000] of longint;


procedure read_arr(var arr:Tarr; N:longint);
var i :longint;
begin
  for i := 1 to N do
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

procedure write_arr(var arr:Tarr; N:longint);
var i :longint;
begin
  for i := 1 to 2 * N do
  begin
    write(arr[i], ' ');
  end;
  writeln();
end;

procedure bubble_not_dec(var arr:Tarr; start, finish:longint);
var i, cnt:longint; sorted:boolean;
begin
  cnt := 0;
  sorted := false;
  while (not sorted) do
  begin
    sorted := true;
    for i := start to finish do
    begin
      if arr[i] > arr[i + 1]
      then begin
        swap(arr[i], arr[i + 1]);
        sorted := false;
      end;
    end;
  end;
end;

procedure bubble_not_inc(var arr:Tarr; start, finish:longint);
var i, cnt:longint; sorted:boolean;
begin
  cnt := 0;
  sorted := false;
  while (not sorted) do
  begin
    sorted := true;
    for i := start to finish do
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
  read(N);
  read_arr(arr, N * 2);
  
  bubble_not_dec(arr, 1, N - 1);
  bubble_not_inc(arr, N + 1, 2 * N - 1);
  
  write_arr(arr, N);
end.
