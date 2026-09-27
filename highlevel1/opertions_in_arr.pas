type Tarr = array[1..200] of longint;

procedure read_arr(var arr:Tarr; var N:longint);
var i :longint;
begin
  read(N);
  for i := 1 to N do
  begin
    read(arr[i]);
  end;
end;

function sum_in_sub_arr(arr:Tarr; l, r:longint):longint;
var i,res:longint;
begin
  read(l , r);
  res := 0;
  for i := l to r do
  begin
    res := res + arr[i];
  end;
  sum_in_sub_arr := res;
end;

procedure replace(var arr:Tarr; i, val:longint);
begin
  read(i, val);
  arr[i] := val;
end;

procedure delete(var arr:Tarr; var N,pos:longint);
var i:longint;
begin
  read(pos);
  for i := pos to N - 1 do
    arr[i] := arr[i + 1];
  N := N - 1;
end;

procedure insert(var arr:Tarr; var N, pos, val:longint);
var i:longint;
begin
  read(pos, val);
  for i:= N downto pos do
    arr[i + 1] := arr[i];
  arr[pos] := val;
  N := N + 1;
end;


var arr:Tarr; N, cnt_operations, operation, i, pos, left, right, val:longint;

begin
  read_arr(arr, N);
  read(cnt_operations);
  for i := cnt_operations downto 1 do
  begin
    read(operation);
    if operation = 1
    then delete(arr, N, pos);
    if operation = 2
    then insert(arr, N, pos, val);
    if operation = 3
    then replace(arr, pos, val);
    if operation = 4
    then begin
      writeln(sum_in_sub_arr(arr, left, right));
    end;
  end;
end.
