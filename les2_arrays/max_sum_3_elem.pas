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


function max_index(var arr: Tarr; N, max1, max2: longint): longint;
var i, etalon: longint;
begin
  etalon := 0;
  for i := 1 to N do
  begin
    if (arr[i] <> max1) and (arr[i] <> max2) 
    then begin
      if (etalon = 0) or (arr[i] > arr[etalon]) 
      then etalon := i;
    end;
  end;

  max_index := etalon;
end;






var arr:Tarr; N, res, max_in1, max_in2, max_in3:longint;

begin
  read_arr(arr, N);
  max_in1 := max_index(arr, N, -101, -101);
  max_in2 := max_index(arr, N, arr[max_in1], -101);
  max_in3 := max_index(arr, N, arr[max_in1], arr[max_in2]);
  res := arr[max_in1] + arr[max_in2] + arr[max_in3];
  writeln(res);
end.
