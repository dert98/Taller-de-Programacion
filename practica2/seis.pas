program seis;
type
lista = ^nodo;
nodo = record
    dato:integer;
    sig :lista;
end;
procedure guardar(var l:lista; num:integer);
var
    nue:lista;
begin
    new(nue);
    nue^.dato:=num;
    nue^.sig := l;
    l:= nue;
end;

procedure ImprimirLista (L: lista);
begin
 if (l <> nil) then
 begin
   Write(l^.dato);
   ImprimirLista(l^.sig);
  end;
end;
procedure aBinario(num:Integer; var l:lista);
begin
if (num <> 0 )then
    begin
    guardar(l,num mod 2);
    aBinario(num div 2,l);
    end;
end;
var
    num:integer;
    l:lista;
begin
  Write('ingrese un numero: ');
  read(num);
  while (num <> 0) do
    begin
    aBinario(num,l);
    ImprimirLista(l);
    l:=nil;
    WriteLn();
    Write('ingrese un numero: ');
    readln(num);
    end;
end.
