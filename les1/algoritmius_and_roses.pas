var price_w, price_b, total:longint;

function max_price(price_w, price_b, total:longint):longint;
var max_flowers, leftover, max_black, diff:longint;
begin
  max_flowers := total div price_w;
  diff := price_b - price_w;
  leftover := total - (max_flowers * price_w);
  max_black := leftover div diff;
  if max_black > max_flowers
  then max_black := max_flowers;
  max_price := max_flowers * price_w + max_black * diff;
  
end;


begin
  read(price_w, price_b, total);
  writeln(max_price(price_w, price_b, total));
end.
