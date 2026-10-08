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

function longest_sub_arr_not_falling(arr:Tarr; N:longint):longint;
var i, etalon, len:longint;
begin
  etalon := 1;
  len := 1;
  for i := 1 to N - 1 do
  begin
    if arr[i] <= arr[i + 1]
    then begin
      inc(len);
      if etalon < len
      then etalon := len;
    end
    else len := 1;
  end;
  longest_sub_arr_not_falling := etalon;
end;

function longest_sub_arr_not_incrising(arr:Tarr; N:longint):longint;
var i, etalon, len:longint;
begin
  etalon := 1;
  len := 1;
  for i := 1 to N - 1 do
  begin
    if arr[i] >= arr[i + 1]
    then begin
      inc(len);
      if etalon < len
      then etalon := len;
    end
    else len := 1;
  end;
  longest_sub_arr_not_incrising := etalon;
end;




var arr:Tarr; N, res, len_not_falling, len_not_inc:longint;
begin
  read_arr(arr, N);
  len_not_falling := longest_sub_arr_not_falling(arr, N);
  len_not_inc := longest_sub_arr_not_incrising(arr, N);
  if len_not_falling > len_not_inc
  then res := len_not_falling
  else res := len_not_inc;
  writeln(res);
end.


