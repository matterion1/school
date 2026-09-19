


var fin, fout:text; N, cnt60, cnt10, cnt1:longint;

begin
  assign(fin, 'input.txt');
  reset(fin);
  assign(fout, 'output.txt');
  rewrite(fout);
  
  read(fin, N);
  cnt60 := N div 60;
  cnt10 := (N mod 60) div 10;
  cnt1 := (N mod 60) mod 10;
  if cnt1 = 9
  then begin
    inc(cnt10);
    cnt1 := 0;
  end;
  
  if (cnt10 > 3) or ((cnt10 = 3) and (cnt1 * 15 + 375 > 440))
  then begin
    inc(cnt60);
    cnt10 := 0;
    cnt1 := 0;
  end;
  
  write(fout, cnt1,' ', cnt10, ' ', cnt60);
  close(fin);
  close(fout);
  
  
end.
