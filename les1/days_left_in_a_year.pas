var day, mon, year:longint;

function cnt_days_in_year(year:longint):longint;
begin
  if (year mod 4 = 0) and (year mod 100 <> 0) or (year mod 400 = 0)
  then cnt_days_in_year := 366
  else cnt_days_in_year := 365;
end;

function days_left(day, mon, year:longint):longint;
var days_in_y, days_passed:longint;
begin
  case mon of
    1:days_passed := 0;
    2:days_passed := 31;
    3:days_passed := 59;
    4:days_passed := 90;
    5:days_passed := 120;
    6:days_passed := 151;
    7:days_passed := 181;
    8:days_passed := 212;
    9:days_passed := 243;
    10:days_passed := 273;
    11:days_passed := 304;
    12:days_passed := 334;
  end;
  if ((year mod 4 = 0) and (year mod 100 <> 0) or (year mod 400 = 0)) and (mon >= 3)
  then inc(days_passed);
  days_passed := days_passed + day - 1;
  days_in_y := cnt_days_in_year(year);
  days_left := days_in_y - days_passed;
end;

begin
  read(day, mon, year);
  writeln(days_left(day, mon, year));
end.
