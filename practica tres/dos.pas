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
    dato: char;
    sig: lista;
end;
procedure CargarLista (var l: lista);
var v: venta;
    nuevo: lista;
Begin
write ('Ingrese un codigo: ');
readln(v.cod);  
if (v.cod <> 0 ) then 
begin
    leer(v);
    CargarLista (l,v);
    new (nuevo);
    nuevo^.dato:= v;
    nuevo^.sig:= l;
    l:= nuevo;
end
else l:= nil
End;
begin
end.
