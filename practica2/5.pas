program Clase1MI;
type
    vector = array [1..20] of Integer;
var
    v:vector;
    max,sum:Integer;
    pos,i:Integer;
    buscar:integer;
procedure cargarVector(var v:vector; var i:integer);
begin
  if (i <= 20) then
  begin
    v[i]:= random(10);
    i:=i+1;
    cargarVector(v,i);
  end;
end;
procedure imprimir(v:vector; var i:integer);
begin
  if (i <= 20) then
  begin
    Writeln ('v[',i,']: ',v[i]);
    i:=i+1;
    imprimir(v,(i));
  end;
end;
procedure maximo(v:vector; var i:integer; var max:integer);
begin
  if (i <= 20) then
  begin
    if (v[i] > max) then
        max :=v[i];
    i:=i+1;
    maximo(v,i,max);
  end;
end;
procedure sumar(v:vector; var i:integer; var sum:integer);
begin
  if (i <= 20) then
  begin
    sum:=sum+v[i];
    i:=i+1;
    sumar(v,i,sum);
  end;
end;
procedure Ordenar (var v: vector; dimL: integer);

var i, j, pos,num: integer;	
		
begin
 for i:= 1 to dimL - 1 do 
 begin {busca el mínimo y guarda en pos la posición}
   pos := i;
   for j := i+1 to dimL do 
        if (v[j] < v[pos]) then pos:=j;
        {intercambia v[i] y v[pos]}
        num := v[pos];   
        v[pos] := v[i];   
        v[i] := num;
    end;
 end;
Procedure busquedaDicotomicaR (v: vector; ini,fin: integer; dato:integer; var pos: integer);
begin
i:= ((fin+ini) div 2);
if (ini <> fin) then
    begin 
    if (dato =  v[i]) then
        pos:= i
    else
        begin
        if (dato > v[i]) then
            begin
            ini:= i+1;
            busquedaDicotomicaR(v,ini,fin,dato,pos);
            end      
        else
            begin
            fin:= i-1;
            busquedaDicotomicaR(v,ini,fin,dato,pos);
            end;
        end;
    end
else
    pos := -1;
end;
Procedure busquedaDicotomica (v: vector; i,f: integer; d:integer; var p: integer);
begin
  busquedaDicotomicaR(v,i,f,d,p);
  if (p = -1) then
    Write('el numero buscado no existe')
  else
    Write('el dato se encontro en la posicion: ',p)
end;
begin
    i:=1;
    cargarVector(v,i);
    max:=1;
    i:=1;
    maximo(v,i,max);
    WriteLn('el maximo es:',max);
    i:=1;
    sum:=0;
    sumar(v,i,sum);
    WriteLn('la suma de los numero es:', sum);
    Ordenar(v,20);
    i:=1;
    imprimir(v,i);
    WriteLn('ingrese un numero a buscar ');
    read (buscar);
    busquedaDicotomica(v,1,20,buscar,pos);
end.
