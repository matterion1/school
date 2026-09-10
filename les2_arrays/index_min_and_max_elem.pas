type Tarr = array[1..100] of longint;



function max_index(var arr:Tarr; N:longint):longint;
var i,etalon:longint;
begin
  etalon := 1;
  for i := 2 to N do
  begin
    if arr[i] >= arr[etalon]
    then etalon := i;
  end;
  max_index := etalon;
end;


function min_index(var arr:Tarr; N:longint):longint;
var i,etalon:longint;
begin
  etalon := 1;
  for i := 2 to N do
  begin
    if arr[i] <= arr[etalon]
    then etalon := i;
  end;
  min_index := etalon;
end;

function max_index_cnt(var arr:Tarr; N,max_n:longint):longint;
var i,cnt:longint;
begin
  cnt := 0;
  for i := 1 to N do
  begin
    if arr[i] = max_n
    then inc(cnt);
  end;
  max_index_cnt := cnt;
end;


function min_index_cnt(var arr:Tarr; N, min_n:longint):longint;
var i, cnt:longint;
begin
  cnt := 0;
  for i := 1 to N do
  begin
    if arr[i] = min_n
    then inc(cnt)
  end;
  min_index_cnt := cnt;
end;

procedure read_arr(var arr: Tarr; var N:longint);
var i :longint;
begin
  read(N);
  for i := 1 to N do
  begin
    read(arr[i]);
  end;
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



var arr:Tarr; N, cnt_max, cnt_min, min_n, max_n, i:longint;

begin
  read_arr(arr, N);
  min_n := arr[min_index(arr, N)];
  max_n := arr[max_index(arr, N)];
  
  cnt_min := min_index_cnt(arr, N, min_n);
  cnt_max := max_index_cnt(arr, N, max_n);
  
  
  writeln(cnt_max);
  
  for i := 1 to N do
  begin
    if arr[i] = max_n
    then write(i, ' ');
    if i = max_index(arr, N)
    then writeln(' ');
  end;

  writeln(cnt_min);
  
  for i := 1 to N do
  begin
    if arr[i] = min_n
    then write(i, ' ');
    if i = min_index(arr, N)
    then writeln(' ');
  end;
  
end.
