type Tarr = array[1..100] of longint;


procedure read_arr(var arr: Tarr; var N:longint);
var i :longint;
begin
  read(N);
  for i := 1 to N do
  begin
    read(arr[i]);
  end;
end;



function is_sum_dig_even(N:longint):boolean;
var sum:longint;
begin
  sum := 0;
  N := abs(N);
  while N <> 0 do
  begin
    sum := sum + N mod 10;
    N := N div 10;
  end;
  is_sum_dig_even := (sum mod 2) = 0
end;

function sort_array(arr:Tarr; N:longint):Tarr;
var res:Tarr; i, cnt:longint;
begin
  cnt := 1;
  for i := 1 to N do
  begin
    if is_sum_dig_even(arr[i])
    then begin
      res[cnt] := arr[i];
      inc(cnt);
    end;
  end;
  sort_array := res;
end;


function cnt_correct_num(arr:Tarr; N:longint):longint;
var i, cnt:longint;
begin
  cnt := 0;
  for i := 1 to N do
  begin
    if is_sum_dig_even(arr[i])
    then inc(cnt);
  end;
  cnt_correct_num := cnt;
end;

procedure write_arr(var arr:Tarr; var N:longint);
var i :longint;
begin
  writeln(N);
  for i := 1 to N do
  begin
    write(arr[i], ' ');
  end;
  writeln();
end;



var arr, res:Tarr; N, cnt_corr:longint;

begin
  read_arr(arr, N);
  res := sort_array(arr, N);
  cnt_corr := cnt_correct_num(arr, N);
  write_arr(res, cnt_corr);
end.
