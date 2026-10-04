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

function  is_inc(arr:Tarr; N:longint):boolean;
var i:longint;
begin
  i := 1;
  while (i < N) and (arr[i] < arr[i + 1]) do
  begin
    inc(i);
  end;
  is_inc := (N = i)
end;

function  is_dec(arr:Tarr; N:longint):boolean;
var i:longint;
begin
  i := 1;
  while (i < N) and (arr[i] > arr[i + 1]) do
  begin
    inc(i);
  end;
  is_dec := (N = i)
end;


function  is_same(arr:Tarr; N:longint):boolean;
var i:longint;
begin
  i := 1;
  while (i < N) and (arr[i] = arr[i + 1]) do
  begin
    inc(i);
  end;
  is_same := (N = i)
end;
  
function  is_not_dec(arr:Tarr; N:longint):boolean;
var i:longint;
begin
  if (is_same(arr, N)) or (is_inc(arr, N))
  then is_not_dec := false
  else begin
      i := 1;
    while (i < N) and (arr[i] <= arr[i + 1]) do
    begin
      inc(i);
    end;
    is_not_dec := (N = i);
  end;
end;  
  
function  is_not_inc(arr:Tarr; N:longint):boolean;
var i:longint;
begin
  if (is_same(arr, N)) or (is_dec(arr, N))
  then is_not_inc := false
  else begin
    i := 1;
    while (i < N) and (arr[i] >= arr[i + 1]) do
    begin
      inc(i);
    end;
    is_not_inc := (N = i);
  end;
  
end;  

function is_unsorted(arr: Tarr; N: longint): boolean;
begin
  is_unsorted := not is_inc(arr, N) and not is_dec(arr, N) and not is_same(arr, N) and  not is_not_dec(arr, N) and   not is_not_inc(arr, N);
end;



var arr:Tarr; N,cnt_arr, i:longint;
begin
  read(cnt_arr);
  for i := 1 to cnt_arr do
  begin
    read_arr(arr, N);
    if is_inc(arr, N) 
    then writeln('The array is sorted in increasing order');
    if is_dec(arr, N) 
    then writeln('The array is sorted in decreasing order');
    if is_same(arr, N) 
    then writeln('All elements in the array are the same');
    if is_not_dec(arr, N) 
    then writeln('The array is sorted in non-decreasing order');
    if is_not_inc(arr, N)
    then writeln('The array is sorted in non-increasing order');
    if is_unsorted(arr, N) 
    then writeln('The array is unsorted');
  end;
end.
