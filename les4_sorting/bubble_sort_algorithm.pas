type Tarr = array[1..1000] of longint;


procedure read_arr(var arr:Tarr; var N:longint);
var i :longint;
begin
  read(N);
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

function cnt_bubble_operations(arr:Tarr; N:longint):longint;
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
        inc(cnt);
        sorted := false;
      end;
    end;
  end;
  cnt_bubble_operations := cnt;
end;

var arr:Tarr; N, res:longint;
begin
  read_arr(arr, N);
  res := cnt_bubble_operations(arr, N);
  writeln(res);
end.


