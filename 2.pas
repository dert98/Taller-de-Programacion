program dos;
type
    propiedad = record
        cod :integer;
        tipo :integer;
        precio :real;
    end;
    reg = record
        zona :integer;
        cod :integer;
        tipo :integer;
        metros :real;
        precioxM :real;
    end;
    lista = ^nodo
    nodo = record
        dato:propiedad;
        sig:lista;
    end;

var
procedure leer(var r:reg);
begin
    writeln('ingrese metros');
    read(r.metros);
    if (r.metros <> -1) then begin
        writeln('ingrese zona');
        read(r.zona);
        writeln('ingrese  cod');
        read(r. cod);
        writeln('ingrese tipo');
        read(r.tipo);
        writeln('ingrese precioxM');
        read(r.precioxM);
    end;
end;
procedure cargar(r:reg,var p:propiedad);
begin
    p.cod := r.cod;
    p.tipo := r.tipo;
    p.precio := (r.precioxM) * r.metros;
end;
procedure generar(var v:vector);
var
    r :reg;
    p :propiedad;
begin
    leer(r);
    while (r.metros <> -1) then begin
        cargar(r,p)
        agregarLista(v[p.zona],p);
        leer(r);
    end
end;
procedure agregarLista(var l:lista, var p:propiedad);
var 
    ant, act, nue:lista;
begin
    new(nue);
    nue.dato := p;
    nue.sig := nil;
    act:=l;
    ant:=act;
    while (act^.dato.cod < l^.dato.cod) do begin
        ant:= act;
        act:= act^.sig;
    end
    if (act <> nil) then
        ant^.sig := nue; 
    nue^.sig := act;
end;
procedure retornar(cz:codZona, cp:codPro, l:lista, var ln:lista);
begin
    while (cp < l^,dato.cod ) and (l <> nil) do 
        l:= l^.sig
    if (l <> nil) then
        while (l^,dato.cod = cod) do
            agregarLista(ln,l^.dato)
end;
var
    codZona;
    codPro;
    l:lista;
begin
    inicializar(v);
    generar(v);
    writeln('ingrese zona');
    read(r.codZona);
    writeln('ingrese tipo');
    read(r.codPro);
    retornar(codZona,codPro,v[codZona],l);
end