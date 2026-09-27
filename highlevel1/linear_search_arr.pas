type Tarr = array[1..200] of longint;

function is_N_in_arr(arr:Tarr; cnt_elem, N:longint):boolean;
var i:longint;
begin
  i := 1;
  while (i <= cnt_elem) and (arr[i] <> N) do
  begin
    inc(i);
  end;
  is_N_in_arr := (i <= cnt_elem);
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

function form_array(arr1, arr2:Tarr; n1, n2:longint):Tarr;
var res:Tarr; i:longint;
begin
  for i := 1 to n2 do
  begin
    if is_N_in_arr(arr1, n1, arr2[i])
    then res[i] := 1
    else res[i] := 0;
  end;
  form_array := res;
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




var arr1, arr2, res:Tarr; n1, n2, i:longint;
begin
  read_arr(arr1, n1);
  read_arr(arr2, n2);
  res := form_array(arr1, arr2, n1, n2);
  write_arr(res, n2);
end.
