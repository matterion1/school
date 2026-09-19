function next_element(N:longint):longint;
begin
  if N mod 2 = 0
  then next_element := N div 2
  else next_element := N * 3 + 1; 
end;



var fin, fout:text; N:longint;

begin
  assign(fin, 'input.txt');
  reset(fin);
  assign(fout, 'output.txt');
  rewrite(fout);
  
  read(fin, N);
  while N <> 1 do
  begin
    write(fout, N);
    N := next_element(N);
  end;
  write(fout, N);
  
  close(fin);
  close(fout);
  
  
end.
