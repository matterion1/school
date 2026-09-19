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


function is_semiprime(N:longint):boolean;
var i:longint;
begin
  is_semiprime := false;
  for i := 2 to trunc(sqrt(N)) do
  begin
    if N mod i = 0
    then begin
      if (is_prime(i)) and (is_prime(N div i))
      then is_semiprime := true;
    end;
  end;
end;


function find_k_semiprime(k:longint):longint;
var cnt, n:longint;
begin
  cnt := 0;
  
  
  n := 4;
  while cnt < k do
  begin
    if is_semiprime(n)
    then inc(cnt);
    if cnt < k
    then inc(n);
  end;
  find_k_semiprime := n;
end;


var fin, fout:text; N:longint;

begin
  assign(fin, 'input.txt');
  reset(fin);
  assign(fout, 'output.txt');
  rewrite(fout);
  
  read(fin, N);
  write(fout, find_k_semiprime(N));
  close(fin);
  close(fout);
  
  
end.
