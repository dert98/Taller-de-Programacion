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
lista = ^nodol;
nodol = record
    dato:prestamo;
    sig:lista;
end;
arbol = ^nodoa;
nodoa = record
    isbn: string;
    prestamos:lista;
    cantp:integer;
    HI: arbol;
    HD: arbol;
end;

procedure enRango(a:arbol;inf:string; sup:string);
begin
    if (a <> nil) then
    begin
      if (a^.isbn > inf) then
        begin
        if (a^.isbn < sup) then
        begin
            Write('el isbn es: ',a^.isbn);
            enRango(a^.HI,inf,sup);
            enRango(a^.HD,inf,sup)
        end
        else
          enRango(a^.HI,inf,sup)
        end
    else
      enRango(a^.HD,inf,sup);
    end;
end;

procedure cargarA(var a:arbol; p:prestamo);
    procedure agregarAdelante(var l:lista; p:prestamo);
        var
            nue:lista;
        begin
            new (nue);
            nue^.dato := p;
            nue^.sig := l;
            nue:=l;
        end;
var
    nue:arbol;
begin
    if (a = nil) 
    then begin
           new(nue);
           nue^.isbn:= p.isbn; 
           nue^.cantp:= 1;
           nue^.HD := nil;
           nue^.Hi := nil;
           nue^.prestamos:=nil;
           agregarAdelante(nue^.prestamos,p);
         end
    else 
        if (p.isbn =  a^.isbn) then
            begin
            a^.cantp:= a^.cantp+1;
            agregarAdelante(a^.prestamos,p);
            end
        else 
            if (p.isbn < a^.isbn) then 
                cargarA(a^.HI, p)
            else 
                cargarA(a^.HD, p); 
end;

procedure cargar(var a:arbol);
    procedure leer(var p:prestamo);
    begin
        Write('isbn: ');
        read(p.isbn);
        if (p.isbn <> '-1') then
        begin
            Write('casa');
            read(p.isbn);
            Write('casa');
            read(p.isbn);
            Write('casa');
            read(p.isbn);   
         end;
    end;
var
    p:prestamo;
begin
    leer(p);
    while (p.isbn <> '-1') do
    begin
        cargarA(a,p);
        leer(p);
    end;
end;
var
    a:arbol;
begin
    a:=nil;
    cargar(a);
    enRango(a,'12','22');
end.
