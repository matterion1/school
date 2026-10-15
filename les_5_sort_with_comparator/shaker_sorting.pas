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



procedure shaker(var arr:Tarr; N:longint);
var i, j:longint; sorted:boolean;
begin
  j := 0;
  sorted := false;
  while (not sorted) do
  begin
    sorted := true;
    for i := 1 + j to N - 1 - j do
    begin
      if arr[i] > arr[i + 1]
      then begin
        swap(arr[i], arr[i + 1]);
        sorted := false;
      end;
    end;
    for i := N - j downto 2 + j do
    begin
      if arr[i] < arr[i - 1]
      then begin
        swap(arr[i], arr[i - 1]);
        sorted := false;
      end;
    end;
    inc(j);
    write_arr(arr, N);
  end;
end;





var arr:Tarr; N:longint;
begin
  read_arr(arr, N);
  shaker(arr, N);
end.
