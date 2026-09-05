var N:longint;

procedure line_char(n:longint; border,fill_char:char);
var i:longint;
begin
  if n > 1
  then begin
         write(border);
         for i := 1 to n - 2 do
           write(fill_char);
         writeln(border);
  end;
end;

function reverse_n(N:longint):longint;
var res:longint;
begin
  res := 0;
  while N <> 0 do
  begin
    res := res * 10 + N mod 10;
    N := N div 10;
  end;
  reverse_n := res;
end;

function cnt_dig(N:longint):longint;
var cnt:longint;
begin
  cnt := 0;
  N := abs(N);
  if N = 0
  then cnt := 1;
  while N <> 0 do
  begin
    N := N div 10;
    inc(cnt);
  end;
  cnt_dig := cnt;
end;

procedure write_num_in_box(N:longint);
var i, temp:longint;
begin
  temp := reverse_n(N);
  line_char(2 * cnt_dig(N) + 1, '*', '*');
  for i := 1 to cnt_dig(N) do
  begin
    write('*', temp mod 10);
    temp := temp div 10;
  end;
  writeln('*');
  line_char(2 * cnt_dig(N) + 1, '*', '*');
end;

begin
  read(N);
  write_num_in_box(N);
end.
