var k1, c1, k2, c2, res:longint;


begin
  read(k1, c1, k2, c2);
  if (k1 = 0) and (c1 = 0)
  then begin
        if (k2 = 0) and (c2 = 0)
        then writeln('NO')
        else writeln('INF');
  end
  else begin
         if -c1 mod k1 = 0
         then begin
                res := -c1 div k1;
                if (k2 * res + c2 <> 0)
                then writeln(res)
                else writeln('NO');
              end
         else writeln('NO');
  end;
end.
