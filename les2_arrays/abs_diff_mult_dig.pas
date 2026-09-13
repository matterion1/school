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

function mult_digt(N:longint):longint;
var res:longint;
begin
  if N = 0
  then res := 0
  else res := 1;
  
  N := abs(N);
  while N <> 0 do
  begin
    res := res * (N mod 10);
    N := N div 10;
  end;
  mult_digt := res;
end;



var mult_dig, arr:Tarr; i,j,k, min_diff, diff, etalon_1, etalon_2, N:longint;
begin
  read_arr(arr, N);
  etalon_1 := 0;
  etalon_2 := 0;
  for i := 1 to N do
  begin
    mult_dig[i] := mult_digt(arr[i]);
  end;
  min_diff := 999999999;
  i := 1;
  j := 2;
  for k := 1 to (N * (N - 1)) div 2 do
  begin
    diff := abs(mult_dig[i] - mult_dig[j]);
    if diff < min_diff
    then begin
      min_diff := diff;
      etalon_1 := i;
      etalon_2 := j;
    end;
    inc(j);
    if j > N
    then begin
      inc(i);
      j := i + 1
    end;
  end;
  writeln(arr[etalon_1],' ', arr[etalon_2]);
end.
