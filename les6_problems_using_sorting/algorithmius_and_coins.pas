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

function sub_arr_sum(arr:Tarr; N, l, r:longint):longint;
var i, sum:longint;
begin
  sum := 0;
  for i := l to r do
  begin
    sum := sum + arr[i];
  end;
  sub_arr_sum := sum;
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


function max_sum_min_elem(arr:Tarr; N:longint):longint;
var i, sum:longint;
begin
  i := 1;
  sum := 0;
  while (sub_arr_sum(arr, N, 1, N - i + 1) >= sum) do
  begin
    sum := sum + arr[N - i + 1];
    inc(i);
  end;
  max_sum_min_elem := sum;
end;



var arr:Tarr; N:longint;
begin
  read_arr(arr, N);
  bubble(arr, N);
  write(max_sum_min_elem(arr, N));
end.
