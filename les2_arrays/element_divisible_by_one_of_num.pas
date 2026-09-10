type Tarr = array[1..100] of longint;



procedure reverse_arr(var arr:Tarr; N:longint);
var i:longint;
begin
  for i := 1 to N div 2 do
  begin
    swap(arr[i], arr[n-i+1]);
  end;
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


function sort_array(arr:Tarr; N, div1, div2, div3:longint):Tarr;
var res:Tarr; i, cnt:longint;
begin
  cnt := 1;
  for i := 1 to N do
  begin
    if (arr[i] mod div1 = 0) or (arr[i] mod div2 = 0) or (arr[i] mod div3 = 0) 
    then begin
      res[cnt] := arr[i];
      inc(cnt);
    end;
  end;
  sort_array := res;
end;


function cnt_correct_num(arr:Tarr; N, div1, div2, div3:longint):longint;
var i, cnt:longint;
begin
  cnt := 0;
  for i := 1 to N do
  begin
    if (arr[i] mod div1 = 0) or (arr[i] mod div2 = 0) or (arr[i] mod div3 = 0) 
    then inc(cnt);
  end;
  cnt_correct_num := cnt;
end;

procedure swap(var x,y:longint);
var temp:longint;
begin
  temp := x;
  x := y;
  y := temp;
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



var arr, res:Tarr; N, cnt_corr, div1, div2, div3:longint;

begin
  read_arr(arr, N);
  read(div1, div2, div3);
  cnt_corr := cnt_correct_num(arr, N, div1, div2, div3);
  res := sort_array(arr, N, div1, div2, div3);
  reverse_arr(res, cnt_corr);
  write_arr(res, cnt_corr);
end.
