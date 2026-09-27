type Tarr = array[1..100] of longint;

procedure read_arr(var arr:Tarr; var N:longint);
var i :longint;
begin
  read(N);
  for i := 1 to N do
  begin
    read(arr[i]);
  end;
end;

function sum_in_between(arr:Tarr; l, r:longint):longint;
var i,res:longint;
begin
  res := 0;
  for i := l to r do
  begin
    res := res + arr[i];
  end;
  sum_in_between := res;
end;


function find_k_even(arr:Tarr; N, k:longint):longint;
var i, cnt:longint;
begin
  cnt := 0;
  i := 1;
  while (i <= N) and (cnt <> k) do
  begin
    if arr[i] mod 2 = 0
    then inc(cnt);
    if cnt < k
    then inc(i);
  end;
  find_k_even := i;
end;

var arr:Tarr; first_even, second_even, N, res:longint;

begin
  read_arr(arr, N);
  
  first_even := find_k_even(arr, N, 1);
  second_even := find_k_even(arr, N, 2);
  
  res := sum_in_between(arr, first_even, second_even);
  writeln(res);
end.
