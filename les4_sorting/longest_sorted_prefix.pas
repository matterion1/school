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

function longest_inc_prefix(arr:Tarr; N:longint):longint;
var i:longint;
begin
  i := 1;
  while (i < N) and (arr[i] <= arr[i + 1]) do
  begin
    inc(i);
  end;
  longest_inc_prefix := i;
end;


function longest_dec_prefix(arr:Tarr; N:longint):longint;
var i:longint;
begin
  i := 1;
  while (i < N) and (arr[i] >= arr[i + 1]) do
  begin
    inc(i);
  end;
  longest_dec_prefix := i;
end;

function longest_prefix(arr:Tarr; N:longint):longint;
begin
  if longest_dec_prefix(arr, N) > longest_inc_prefix(arr, N)
  then longest_prefix := longest_dec_prefix(arr, N)
  else longest_prefix := longest_inc_prefix(arr, N)
end;

var arr:Tarr; N, res:longint;
begin
  read_arr(arr, N);
  res := longest_prefix(arr, N);
  writeln(res);
end.


