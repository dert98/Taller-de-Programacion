Program ImperativoClase3;
type 
venta = record
    codigo: Integer;
    fecha:Integer;
    cant:Integer;
end;
arbol = ^nodoArbol;
nodoArbol = record
    dato: venta;
    HI: arbol;
    HD: arbol;
end;
lista = ^nodo;
nodo = record
    dato: venta;
    sig: lista;
end;

procedure CargarLista (var l: lista);
var
    nuevo: lista;
Begin
new (nuevo);
write ('Ingrese un codigo: ');
readln(nuevo^.dato.codigo);  
if (nuevo^.dato.codigo <> 0 ) then 
begin
    write ('Ingrese un fecha: ');
    readln(nuevo^.dato.fecha); 
    write ('Ingrese un cantidad: ');
    readln(nuevo^.dato.cant); 
    CargarLista (l);
    nuevo^.sig:= l;
    l:= nuevo;
end
else l:= nil
End;
procedure CargarL(var l:lista);
begin
  CargarLista(l);
end;
procedure ImprimirListaMismoOrden (l: lista);
begin
if (l<> nil) then 
begin
    write (' ', l^.dato.codigo);
    ImprimirListaMismoOrden (l^.sig);
end;
end;
Procedure InsertarElemento (var a: arbol; elem: venta);
  Begin
    if (a = nil) 
    then begin
           new(a);
           a^.dato:= elem; 
           a^.HI:= nil; 
           a^.HD:= nil;
         end
    else if (elem.codigo < a^.dato.codigo) 
         then InsertarElemento(a^.HI, elem)
         else InsertarElemento(a^.HD, elem); 
  End;
procedure InformarCantidad(a:arbol);
  procedure cantidad(a:arbol; var cant:integer);
  begin
    if (a <> nil) then begin
      cant:= cant + 1;
      WriteLn('codigo: ',a^.dato.codigo);
      cantidad (a^.HI,cant);
      cantidad (a^.HD,cant);
    end;
  end;
var
cant:integer;
begin
  cant:=0;
  cantidad(a,cant);
  writeln('la cantidad de nodos es: ',cant);
end;
procedure generar(a:arbol; var l:lista);
var unaVenta: venta;  
Begin
 while (l <> nil)do
  begin
   unaVenta := l^.dato;
   InsertarElemento (a, unaVenta);
   writeln;
   l := l^.sig;
  end;
 writeln;
 writeln ('-----------------------------------------------');
 writeln;
end;
var
l:lista;
a:arbol;
begin
    l:= nil;
    a:= nil;
    CargarL(l);
    ImprimirListaMismoOrden(l);
    generar(a,l);
    InformarCantidad(a);
end.
