program imprimir_numero_color;

uses crt;

var
  numero: integer;
  color: string;

function divicolores (numero: integer): string;
begin
  if numero mod 13 = 0 then
    divicolores := 'brown'
  else if numero mod 7 = 0 then
    divicolores := 'green'
  else if numero mod 5 = 0 then
    divicolores := 'red'
  else if numero mod 3 = 0 then
    divicolores := 'blue'
  else if numero mod 2 = 0 then
    divicolores := 'yellow'
  else
    divicolores := 'white';
end;

function colors(color: string): byte;
begin
  if color = 'brown' then
    colors := brown
  else if color = 'green' then
    colors := green
  else if color = 'red' then
    colors := red
  else if color = 'blue' then
    colors := blue
  else if color = 'yellow' then
    colors := yellow
  else
    colors := white;
end;

procedure subrayar;
begin
  writeln;	
  writeln('=======================================================');  
end;

begin
	subrayar; writeln('Este programa le permitira saber si su numero es divisible entre 13,7,5,3,2 a travez de texto de colores...');
	subrayar; textcolor(brown);  writeln('          Marron /13');
	subrayar; textcolor(green);  writeln('          Verde/7');
	subrayar; textcolor(red);    writeln('          Rojo/5');
	subrayar; textcolor(blue);   writeln('          azul/3');
	subrayar; textcolor(yellow); writeln('          Amarillo/2');
	subrayar; textcolor(white);  writeln('          Blanco, no divisible entre los anteriores');
	subrayar; write('Ingrese un numero: ');
    readln(numero);
  
    color := divicolores(numero);
  
    textcolor(colors(color));
    writeln('El numero ingresado es: ', numero);
    readkey; 
end.
