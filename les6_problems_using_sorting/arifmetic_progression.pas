type Tarr = array[1..100] of longint;

procedure swap(var x,y:longint);
var temp:longint;
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
      if arr[i] > arr[i + 1]
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
    read(arr[i]);
  end;
end;



function is_arifmetic_prog_possible(arr:Tarr; N:longint):boolean;
var i, diff:longint;
begin
  i := 1;
  diff := arr[i + 1] - arr[i];
  while (i < N - 1) and ((arr[i + 1] - arr[i]) = diff) do
  begin
    inc(i);
  end;
  is_arifmetic_prog_possible := i = (N - 1)
end;


var arr:Tarr; N:longint;
begin
  read_arr(arr, N);
  bubble(arr, N);
  if is_arifmetic_prog_possible(arr, N)
  then begin
    writeln('YES');
    writeln(arr[2] - arr[1]);
  end
  else begin
    writeln('NO');
    writeln(arr[N] - arr[1]);
  end;
end.
