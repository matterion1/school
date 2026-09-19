type Tarr = array[0..9] of boolean;


procedure form_arr_included_num(var arr:Tarr; N:longint);
var i:longint;
begin
  for i := 0 to 9 do
  begin
    arr[i] := false;
  end;
  if N = 0
  then arr[0] := true;
  while N <> 0 do
  begin
    arr[N mod 10] := true;
    N := N div 10;
  end;
end;


function is_all_num_inc(arr:Tarr):boolean;
var i:longint;
begin
  is_all_num_inc := true;
  for i := 0 to 9 do
  begin
    if not(arr[i])
    then is_all_num_inc := false;
  end;
end;




var fin, fout:text; N, i:longint; arr:Tarr;

begin
  assign(fin, 'input.txt');
  reset(fin);
  assign(fout, 'output.txt');
  rewrite(fout);
  
  read(fin, N);
  form_arr_included_num(arr, N);
  if is_all_num_inc(arr) 
  then write(fout, 0, ' ', 0)
  else begin
    for i := 0 to 9 do
      if not arr[i] 
      then write(fout, i, ' ');
  end;
  close(fin);
  close(fout);
  
  
end.
