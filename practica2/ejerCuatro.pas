program Clase1MI;
const dimF = 50;
type
    lista = ^nodo;
    nodo = record
            dato: integer;
            sig: lista;
    end;
procedure agregarAdelante(var l:lista; num:integer);
var
    nue:lista;
begin
    new(nue);
    nue^.dato:=num;
    nue^.sig := l;
    l:= nue;
end;
procedure cargarLista (var l:lista);
var
	num:integer;
begin
    num:= random(5);
    while (num <> 0) do
    begin
        agregarAdelante(l,num);
        writeln ('se agrego el numero: ',num);
        num:= random(5);
    end;
end;
procedure Imprimir (num:Integer);
begin
  Write(num,',');
end;

procedure ImprimirLista (L: lista);
begin
 if (l <> nil) then
 begin
   Imprimir(l^.dato);
   ImprimirLista(l^.sig);
  end;
end;
procedure maximo(l:lista; var max:integer);
begin
if (l <> nil) then
    begin
        if (l^.dato > max)then
        begin
            max := l^.dato;
        end;
    maximo(l^.sig,max);
    end;
end;
procedure minimo(l:lista; var min:integer);
begin
    if (l <> nil) then
    begin
        if (l^.dato < min)then
            min := l^.dato;
        minimo(l^.sig,min);
    end;
end;
procedure buscarEnLista(l:lista;num:integer;var ok:Boolean);
begin
  if (l <> nil) and (not(ok)) then
    begin
      if (l^.dato = num)then
        begin
        ok:= true;
        end;
      buscarEnLista(l^.sig,num,ok);
    end
end;
function Existe(l:lista; num:integer):boolean;
var
    ok:Boolean;
begin
    ok:=false;
    buscarEnLista(l,num,ok);
    Existe := ok;
end;
var
    l:lista;
    max,min:integer;
    num:integer;
begin
  cargarLista(l);
  ImprimirLista(l);
  max:=0;
  maximo(l,max);
  WriteLn();
  WriteLn('el maximo es:', max);
  min:=9999;
  minimo(l,min);
  WriteLn('el minimo es:', min);
  Write('ingrese un numero a buscar: ');
  read(num);
  if (Existe(l,num)) then
    Writeln('encontre el numero ',num)
  else
     Writeln('no encontre el numero ',num);
end.
