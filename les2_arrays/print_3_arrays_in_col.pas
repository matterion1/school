type Tarr = array[1..100] of longint;

procedure swap(var x,y:longint);
var temp:longint;
begin
  temp := x;
  x := y;
  y := temp;
end;

procedure sort_not_falling(var a,b,c:longint);
begin
  if a > b
  then swap(a,b);
  if a > c
  then swap(a,c);
  if b > c
  then swap(b,c);
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

function maximum(n1, n2, n3:longint):longint;
begin
  sort_not_falling(n1, n2, n3);
  maximum := n3;
end;







var arr1, arr2, arr3:Tarr; n1, n2, n3, i, max:longint;

begin
  read_arr(arr1, n1);
  read_arr(arr2, n2);
  read_arr(arr3, n3);
  max := maximum(n1,n2,n3);
  for i:=1 to max do
  begin
    if i <= n1
    then write(arr1[i]:4, ' | ')
    else write('':4, ' | ');
    
    if i <= n2
    then write(arr2[i]:4, ' | ')
    else write('':4, ' | ');
    
    if i <= n3
    then writeln(arr3[i]:4)
    else writeln('':4);
  end;
end.
