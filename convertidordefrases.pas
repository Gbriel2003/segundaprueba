program Convertidordefrases;
uses crt;

var
    frase: string;
    opcion: integer;
    seguir: char;
    i: integer;

  function  binario (i: integer): string;
var
  bin: string;
begin
  bin := '';
  while i > 0 do
  begin
    if i mod 2 = 0 then
      bin := '0' + bin
    else
      bin := '1' + bin;
    i := i div 2;
  end;
  binario := bin;
end;

  function hexadecimal(i: integer): string;
const
  hex: string = '0123456789ABCDEF';
var
  hexa: string;
begin
  hexa := '';
  while i > 0 do
  begin
    hexa := hex[i mod 16 + 1] + hexa;
    i := i div 16;
  end;
  hexadecimal := hexa;
end;

  function octal (i: integer): string;
var
  oct: string;
begin
  oct := '';
  while i > 0 do
  begin
    oct := char(i mod 8 + 48) + oct;
    i := i div 8;
  end;
  octal := oct;
end;

  function romano (j: integer): string;
const
  rom: array[1..13] of string = ('M', 'CM', 'D', 'CD', 'C', 'XC', 'L', 'XL', 'X', 'IX', 'V', 'IV', 'I');
  val: array[1..13] of integer = (1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1);
var
  romanon: string;
  i: integer;
begin
  romanon := '';
  i := 1;
  while j > 0 do
  begin
    while j >= val[i] do
    begin
      romanon := romanon + rom[i];
      j := j - val[i];
    end;
    i := i + 1;
  end;
  romano := romanon;
end;

  procedure subrayar;
begin
  writeln('======================================');  
end;
  
  procedure convertir_letras(frase: string; opcion: integer);
var
  i: integer;
begin
  for i := 1 to length(frase) do
  begin
    case opcion of
      1: writeln('La letra "', frase[i], '" en binario es: ', binario (ord(frase[i])));
      2: writeln('La letra "', frase[i], '" en hexadecimal es: ', hexadecimal (ord(frase[i])));
      3: writeln('La letra "', frase[i], '" en octal es: ', octal (ord(frase[i])));
      4: writeln('La letra "', frase[i], '" en Romano es: ', romano (ord(frase[i])));
      else writeln('Opción inválida. Intente de nuevo.');
    end;
  end;
end;

begin
  repeat
    clrscr;
    textcolor(yellow);
    write('Ingrese una frase: ');
    readln(frase);
    writeln;

    writeln('Seleccione la opcion de conversion');
    subrayar;
	writeln('1. Binario');
	subrayar;
	writeln('2. Hexadecimal');
	subrayar;
	writeln('3. Octal');
	subrayar;
	writeln('4. Romano');
	subrayar;
	writeln('5. Salir');
	subrayar;

    readln(opcion);

	if opcion=5 then 
  writeln('Estas seguro que deseas salir?');
  
	case opcion of

  1: begin
       write('Su frase en binario es: ');
       for i := 1 to length(frase) do
         write(binario(ord(frase[i])), ' ');
        writeln; writeln; 
     end;
  2: begin
       write('Su frase en hexadecimal es: ');       
       for i := 1 to length(frase) do
         write(hexadecimal(ord(frase[i])), ' ');
       writeln; writeln;
     end;
  3: begin
       write('Su frase en octal es: ');
       for i := 1 to length(frase) do
         write(octal(ord(frase[i])), ' ');
       writeln; writeln;
     end;
  4: begin
       write('Su frase en Romano es: ');
       for i := 1 to length(frase) do
         write(romano(ord(frase[i])), ' ');
       writeln; writeln;
     end;
  5: writeln;     
  else writeln('Opción inválida. Intente de nuevo.');
  
end;

	writeln('Si desea salir del programa presione ''N'' o presione una tecla distinta si desea continuar...');
	readln(seguir);
	until (seguir = 'n') or (seguir = 'N');

	clrscr;
	textcolor(green);
	writeln('Programa finalizado...');

end.
