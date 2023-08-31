program tres;
type
    producto = record
        cant =integer;
        cod =integer;
        precio =real;
    end;
    detalle = record
        precio:integer;
        stock:integer;
    end;
    vector = Array[1..1000] of detalle;
    listap = ^nodo2;
    nodo2 = record
        dato:producto;
        sig:listap;
    end;
    listat = ^nodo;
    nodo = record
        cod :integer;
        montototal:real;
        lista :listap;
        sig:listat;
    end;
var
procedure generoTicket(var t:listat; var cod:integer; var v:vector);
begin
    writeln ('ingrese cod');
    read(cod);
    writeln ('ingrese cant');
    read(cant);
    p.cod := cod;
    while (cod <> -1) do begin
        if (p.cant <= v[cod].stock ) then
        begin
            t.montototal := t.montototal + (v[cod].precio * p.cant);
            v[cod] := v[cod] - p.cant
        end
        else
            t.montototal := t.montototal + (v[cod].precio * v[cod].stock);
            v[cod] := 0;
        agregarLista(l,p);
    end;
    writeln ('ingrese cod');
    read(cod);
    writeln ('ingrese cant');
    read(cant);
end;
procedure generar(var lt:listat; var v:vector);
var
    t:listat;
begin
    writeln ('ingrese cod');
    read(cod);
    while (p.cod <> -1) do begin
        generoTicket(t,cod,v);
        agregarListaTicket(lt,t);
        writeln ('ingrese cod');
        read(cod);
    end;
end;
var
    v:vector;
    lt:listat;
    cantPro:integer;
    codPro:integer;
begin
    cargar(v); {ya se dispone}
    generar(lt,v);
    writeln('ingrese codigo');
    read(codPro);
    cantPro:=0;
    retornar(lt,cantPro,codPro);
end