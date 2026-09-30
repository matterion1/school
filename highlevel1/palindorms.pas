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

function is_sub_arr_pal(arr:Tarr; left,right:longint):boolean;
var is_pal:boolean;
begin
  is_pal := true;
  while (left < right) and (is_pal) do
  begin
    if arr[left] <> arr[right]
    then is_pal := false
    else begin
      inc(left);
      dec(right);
    end;
  end;
  is_sub_arr_pal := is_pal;
end;

function find_start_index(arr:Tarr; N:longint):longint;
var i:longint; found:boolean;
begin
  i := 1;
  found := false;
  while (i <= N) and (not found) do
  begin
    if is_sub_arr_pal(arr, i, N)
    then found := true
    else inc(i);
  end;
  find_start_index := i;
end;


var arr:Tarr; N, i, start_index, cnt_missing:longint;

begin
  read_arr(arr, N);
  start_index := find_start_index(arr, N);
  cnt_missing := start_index - 1;
  writeln(cnt_missing);
  
  if cnt_missing > 0
  then begin
    for i := cnt_missing downto 1 do
    begin
      write(arr[i], ' ')
    end;
  end;
  
end.
