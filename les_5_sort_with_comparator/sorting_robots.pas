type Tdate_time = array[1..6] of longint;
type Tarr = array[1..100] of Tdate_time;

procedure swap(var a, b:Tdate_time);
var temp:Tdate_time;
begin
  temp := a;
  a := b;
  b := temp;
end;

procedure read_arr(var arr:Tarr; var N:longint);
var i, j:longint;
begin
  read(N);
  for i := 1 to N do
  begin
    for j := 2 to 6 do
    begin
      arr[i, 1] := i;
      read(arr[i, j]);
    end;
  end;
end;

procedure write_arr(var arr:Tarr; N:longint);
var  i:longint;
begin
  for i := 1 to N do
  begin
    write(arr[i, 1], ' ');
  end;
end;


function compare(a, b:Tdate_time):boolean;
begin
  if a[4] <> b[4]
  then compare := a[4] < b[4]
  else if a[3] <> b[3]
       then compare := a[3] < b[3]
       else if a[2] <> b[2]
            then compare := a[2] < b[2]
            else if a[5] <> b[5]
                 then compare := a[5] < b[5]
                 else if a[6] <> b[6]
                      then compare := a[6] < b[6]
                      else compare := a[1] > b[1]
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
      if compare(arr[i], arr[i + 1])
      then begin
        swap(arr[i], arr[i + 1]);
        sorted := false;
      end;
    end;
  end;
end;


var arr:Tarr; N:longint;
begin
  read_arr(arr, N);
  bubble(arr, N);
  write_arr(arr, N);
end.

