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


function sum_on_segment(arr:Tarr; N, left, right:longint):longint;
var i, sum:longint;
begin
  sum := 0;
  for i := left to right do
  begin
    sum := sum + arr[i]
  end;
  sum_on_segment := sum;
end;



var arr:Tarr; N, cnt_elem:longint;
begin
  read_arr(arr, N);
  read(cnt_elem);
  bubble(arr, N);
  write(sum_on_segment(arr, N, 1, cnt_elem), ' ', sum_on_segment(arr, N, N - cnt_elem + 1, N));
end.
