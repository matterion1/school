var n1, n2, n3, res_max, res_min:longint;

procedure swap(var x,y:longint);
var temp:longint;
begin
  temp := x;
  x := y;
  y := temp;
end;

procedure sort_not_incrising(var a,b,c:longint);
begin
  if a < b
  then swap(a,b);
  if a < c
  then swap(a,c);
  if b < c
  then swap(b,c);
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

function max_num(dig1, dig2, dig3:longint):longint;
begin
  sort_not_incrising(n1, n2, n3);
  max_num := n1 * 100 + n2 * 10 + n3;
end;

function min_num(dig1, dig2, dig3:longint):longint;
begin
  sort_not_falling(n1, n2, n3);
  sort_not_falling(n1, n2, n3);
  if n1 = 0
  then swap(n1, n2);
  if n1 = 0
  then swap(n1, n3);
  min_num := n1 * 100 + n2 * 10 + n3;
end;

begin
  read(n1, n2, n3);
  res_min := min_num(n1, n2, n3);
  res_max := max_num(n1 , n2, n3);
  writeln(res_min);
  writeln(res_max);
end.
