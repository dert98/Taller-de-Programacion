program tres;
type
    producto = record
        cod :integer;
        cant :integer;
        precio :real;
    end;
    detalle = record
        precio:integer;
        stock:integer;
    end;
    vector = Array[1..1000] of detalle;
    listap = ^nodo2
    nodo2 = record
        dato:producto;
        sig:listap;
    end;
    listat = ^nodo
    nodo = record
        cod :integer;
        monto:real;
        lista :listap;
        sig:listat;
    end;
var
procedure generoTicket(cod:integer, var precioTotal:real, var v:vector);
begin
    writeln ('ingrese cod');
    read(cod);
    writeln ('ingrese cant');
    read(cant);
    while (cod <> -1) do begin
        precioTotal := precioTotal + (v[cod].precio * p.cant);
        if (p.cant <= v[cod].stock ) then
            v[cod] := v[cod] - p.cant;
        else
            v[cod] := 0;
        agregarLista(l,p);
    end;
    writeln ('ingrese cod');
    read(cod);
    writeln ('ingrese cant');
    read(cant);
end;
procedure generar(var lt:listat, var v:vector);
begin
    writeln ('ingrese cod');
    read(cod);
    while (p.cod <> -1) do begin
        generoTicket(t,cod,precioTotal,v);
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