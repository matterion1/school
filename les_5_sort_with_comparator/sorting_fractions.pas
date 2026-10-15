type Tarr = array[1..200] of longint;

procedure swap(var x,y:longint);
var temp:longint;
begin
  temp := x;
  x := y;
  y := temp;
end;


procedure write_arr(var arr_num, arr_den:Tarr; var N:longint);
var i :longint;
begin
  for i := 1 to N do
  begin
    writeln(arr_num[i], ' ', arr_den[i]);
  end;
  writeln();
end;

procedure read_arr(var arr_num, arr_den:Tarr; N:longint);
var i :longint;
begin
  for i := 1 to N do
  begin
    read(arr_num[i], arr_den[i]);
  end;
end;

function compare(arr_num, arr_den:Tarr; a, b:longint):boolean;
begin
  if (arr_den[a] < 0) = (arr_den[b] < 0)
  then compare := arr_num[a] * arr_den[b] > arr_num[b] * arr_den[a]
  else compare := arr_num[a] * arr_den[b] < arr_num[b] * arr_den[a] 
end;


procedure bubble(var arr_num, arr_den:Tarr; N:longint);
var i:longint; sorted:boolean;
begin
  sorted := false;
  while (not sorted) do
  begin
    sorted := true;
    for i := 1 to N - 1 do
    begin
      if compare(arr_num, arr_den, i, i + 1)
      then begin
        swap(arr_den[i], arr_den[i + 1]);
        swap(arr_num[i], arr_num[i + 1]);
        sorted := false;
      end;
    end;
  end;
end;





var arr_num, arr_den:Tarr; N:longint;
begin
  read(N);
  read_arr(arr_num, arr_den, N);
  bubble(arr_num, arr_den, N);
  write_arr(arr_num, arr_den, N);
end.
