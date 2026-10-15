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

function compare(a, b:longint):boolean;
begin
  if (a = 0) and (b <> 0)
  then compare := true
  else if (a < 0) and (b > 0) 
       then compare := true 
       else if (a > 0) and (b > 0)
            then compare := a > b
            else if (a < 0) and (b < 0)
                 then compare := a < b
                 else compare := false;
                 
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
