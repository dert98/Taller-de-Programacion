Program cuatro2;
type
dias=1..21;
meses=1..12;
formatofecha = record
    dia:dias;
    mes:meses;
end;
prestamo = record
    isbn :String;
    numSocio:integer;
    fecha:formatofecha;
    diasp:integer;
end;
arbol = ^nodoArbol;
nodoArbol = record
    dato: prestamo;
    HI: arbol;
    HD: arbol;
end;
totalp = record
    isbn: string;
    prestamos:arbol;
    cantp:integer;
end;
arbolp = ^nodoArbolp;
nodoArbolp = record
    dato:totalp;
    HI: arbol;
    HD: arbol;
end;
procedure generoAp(var a:arbol2; p:prestamo);
var
    nue:lista;
begin
    if (a = nil) 
    then begin
           new(nue);
           nue^.dato.isbn:= p.isbn; 
           nue^.dato.cantp:= 1;
           nue^.HD := nil;
           nue^.Hi := nil;
           agregarEnLista(nue^.lista,p);
         end
    else 
        if (p.isbn =  a^.dato.isbn) then
            begin
           a^.dato.isbn:= p.isbn; 
           a^.dato.cantp:= a^.dato.cantp+1;
           agregarEnLista(a^.lista,p);
           end
        else 
            if (p.isbn < a^.dato.isbn) then 
                Insertarpento(a^.HI, p)
            else Insertarpento(a^.HD, p); 
end;
procedure cargar(var a:arbol; var a2:arbolp)
var
    p:prestamo
begin
    leer(p);
    while (p.ISBN <> -1) do
    begin
        cargarA(a,p);
        generoAp(a2,p);
        leer(p);
    end;
end;
var
    a:arbol;
    a2:arbolp;
begin
    a:=nil;
    a2:=nil;
    cargar(a,a2);
end.
