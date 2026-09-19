function min_time(N:longint):longint;
var pow2, res:longint;
begin
  pow2 := 2;
  res := 0;
  while pow2 < N + 2 do
  begin
    pow2 := pow2 * 2;
    inc(res);
  end;
  min_time := res;
end;








var fin, fout:text; N, min_time_val, max_time:longint;

begin
  assign(fin, 'input.txt');
  reset(fin);
  assign(fout, 'output.txt');
  rewrite(fout);
  
  read(fin, N);
  min_time_val := min_time(N);
  max_time := ((N + 1) div 2);
  
  write(fout, min_time_val, ' ',max_time);
  close(fin);
  close(fout);
  
  
end.
