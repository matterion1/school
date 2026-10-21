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
      if arr[i] < arr[i + 1]
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


function biggest_sum_k_elem(arr:Tarr; N, k:longint):longint;
var i, sum:longint;
begin
  i := 1;
  sum := 0;
  while (i <= N) and (arr[i] >= 0) and (i - 1 < k) do
  begin
    sum := sum + arr[i];
    inc(i);
  end;
  if i - 1 = 0
  then sum := arr[1];
  biggest_sum_k_elem := sum;
end;



var arr:Tarr; N, cnt_elem:longint;
begin
  read_arr(arr, N);
  read(cnt_elem);
  bubble(arr, N);
  write(biggest_sum_k_elem(arr, N, cnt_elem));
end.

