program tres;
procedure imprimirNum(n:Integer);
begin
if ((n div 10) > 0) then
    imprimirNum(n div 10);
    Write(n mod 10,'   ');
end;
var
    num:Integer;
begin
 WriteLn('ingrese un numero: ');
  read (num);
  while (num <> 0) do
    begin
    imprimirNum(num);
    WriteLn();
    Write('ingrese un numero: ');
    read (num);
    end;
end.
