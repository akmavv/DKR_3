﻿uses crt; 
function f(x:real):real; 
begin 
  f:=power(x,3)+(-2)*power(x,2)+(0)*x+(19); 
end; 
function per(x:real):real; 
  begin 
  per:=(power(x,4))/4-2*(power(x,3))/3+0*((power(x,2))/2)+19*x; 
  end; 
  procedure horoh; 
  begin 
  print('введите верхний предел:'); 
  var a:=ReadInteger; 
  print('введите нижний предел:'); 
  var b:=ReadInteger; 
  print('введите количество разбиений:'); 
  var n:=ReadInteger; 
  var h:=(b-a)/n; 
  var s:=(f(a)+f(b))/2; 
  var x:=a+h; 
  for var i:=1 to n-1 do 
    begin 
    s:=s+f(x); 
    x:=x+h; 
    s:=s*h; 
    end; 
  var p:=per(b)-per(a); 
  var d:=abs(p-s); 
  println('точное значение:',p); 
  println('приближенное значение:',s);  
  println('погрешность метода',d); 
    end; 
  var t:integer; 
  begin 
    repeat 
      clrscr; 
      println; 
      println('Выберите то,что вам необходимо:'); 
      println('1-функция'); 
      println('2-первообразная функции'); 
      println('3-нахождение площади'); 
      println('0-выйти из программы'); 
      readln(t); 
      case t of 
        1:begin println('Функция:2*x^3+(-2)*x^2+(0)*x+(19)'); readkey; end; 
        2:begin println('Первообразная функции:(power(x,4))/4-2*(power(x,3))/3+0*((power(x,2))/2)+19*x'); readkey; end; 
        3:begin horoh; readkey; end; 
        0:begin halt; readkey; end 
      end; 
    until t=4; 
end.