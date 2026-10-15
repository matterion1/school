type Tarr = array[1..100] of longint;

procedure swap(var x,y:longint);
var temp:longint;
begin
  temp := x;
  x := y;
  y := temp;
end;


procedure write_arr(var arr:Tarr; N:longint);
var i :longint;
begin
  for i := 1 to N do
  begin
    write(arr[i], ' ');
  end;
  writeln();
end;

procedure read_arrays(var a, b, c, d, e:Tarr; i:longint);
begin
  read(a[i]);
  read(b[i]);
  read(c[i]);
  read(d[i]);
  read(e[i]);
end;

function compare(day, mon, year, hour, min:Tarr; a, b:longint):boolean;
begin
  if year[a] <> year[b]
  then compare := year[a] < year[b]
  else if mon[a] <> mon[b]
       then compare := mon[a] < mon[b]
       else if day[a] <> day[b]
            then compare := day[a] < day[b]
            else if hour[a] <> hour[b]
                 then compare := hour[a] < hour[b]
                 else if min[a] <> min[b]
                      then compare := min[a] < min[b]
                      else compare := a > b
              
end;


procedure bubble(var a, b, c, d, e, arrid:Tarr; N:longint);
var i:longint; sorted:boolean;
begin
  sorted := false;
  while (not sorted) do
  begin
    sorted := true;
    for i := 1 to N - 1 do
    begin
      if compare(a, b, c, d, e, i, i + 1)
      then begin
        swap(arrid[i], arrid[i + 1]);
        swap(a[i], a[i + 1]);
        swap(b[i], b[i + 1]);
        swap(c[i], c[i + 1]);
        swap(d[i], d[i + 1]);
        swap(e[i], e[i + 1]);
        sorted := false;
      end;
    end;
  end;
end;





var days, months, years, minutes, hours, arrid:Tarr; N, i:longint;
begin
  read(N);
  for i := 1 to N do
  begin
    read_arrays(days, months, years, hours, minutes, i);
    arrid[i] := i;
  end;
  bubble(days, months, years, hours, minutes, arrid, N);
  write_arr(arrid, N);
end.
