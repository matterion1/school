function is_odd_dig(N:longint):boolean;
begin
  N := abs(N);
  is_odd_dig := true;
  while N <> 0 do
  begin
    if (N mod 10) mod 2 = 0
    then is_odd_dig := false;
    N := N div 10;
  end;
  
end;



function is_prime(N:longint):boolean;
var i:longint;
begin
  i := 3;
  if (N = 2) or (N = 3)
  then is_prime := true
  else if (N mod 2 = 0) or (N <= 1)
       then is_prime := false
       else begin
         while (sqr(i) <= N) and (N mod i <> 0) do
         begin
           i := i + 2;
         end;
         if N mod i <> 0 
         then is_prime := true
         else is_prime := false;
       end;
end;

function cnt_prime_withou_odd_in_range(N:longint):longint;
var i, cnt:longint;
begin
  cnt := 0;
  for i := 3 to N do
  begin
    if (is_prime(i)) and is_odd_dig(i)
    then inc(cnt);
  end;
  cnt_prime_withou_odd_in_range := cnt;
end;


var fin, fout:text; N:longint;

begin
  assign(fin, 'input.txt');
  reset(fin);
  assign(fout, 'output.txt');
  rewrite(fout);
  
  read(fin, N);
  write(fout, cnt_prime_withou_odd_in_range(N));
  close(fin);
  close(fout);
  
  
end.
