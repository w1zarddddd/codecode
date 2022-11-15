program main;
var a,b,c,p,g,d,x,y,x0,y0,f1,f2, xx,yy :real;
  const 
    c1 = 'Параметры задают гиперболу неверно';
    c2 = 'Параметры не задают график модуля';
    c3 = 'Область D не образуется';
    c4 = 'Точка лежит в области D';
    c5 = 'Точка лежит на границе области D';
    c6 = 'Точка лежит на перeсечении графиков';
    c7 = 'Точка не лежит в области D';
    c8 = 'Нельзя делить на 0!,x<>b';
    t=0.001;
begin
  writeln('Введите параметры гиперболы    ');//(a<0)
  //read(a,b,c);
  a:=-1.8;// это чтобы не вводить заново значения(для тестов)
  b:=-1.5;
  c:=-1.3;
  
  writeln('Введите параметры графика модуля');
  //read(p,g,d);
  p:=2.4;
  g:=1.2;
  d:=3.3;
 // x0:=abs(g);
 // y0:=d;
  
  
  writeln('Введите координаты точки');
   writeln(' ', 'x:');
   read(x);
   writeln('y:');
   readln(y);
   f1:=a/(x+b)+c;//гипербола
   f2:=-abs(p*x+g)+d;//график модуля  
   if x + b = 0 then
     writeln(c8)//нельзя делить на 0
     
      else
   if a >= 0 then 
     writeln(c1)//параметры задают гиперболу неверно
      else 
   
   if p = 0 then 
     writeln (c2)//параметры задают график модуля неверн
      
    else begin
    xx:=-g/p; yy:=d; // вершина модуля
   if  not((a/(xx+b)+c<yy) and (xx<-b))then
    writeln(c3)//область D не образуется
   
   else 
 if ((y>f2)and((y=f1  )or(y<f1)or(y>f1)))or((y>f1)and(y>f2))or((y<f1)and(y<f2))then
   writeln(c7)
 else
  //  2 )на границе.
         if  ((abs(f1-y)<t)and (not(abs(f2-y)<t)))or((abs(f2-y)<t)and (not(abs(f1-y)<t)))then 
           writeln(c5)//Точка лежит на границе области D 
         else
  // 3)  в области D-        
         if (x<-b)and (y>f1)and (y<f2)   or (x>-b)and(y<f1)and (y<f2) 
          then  writeln(c4) //Точка лежит в области D
          else
  //4) на пересечении
         if ((abs(f1-y)<t)and(abs(f2-y)<t)and(abs(f2-f1)<t))then
           writeln(c6)//Точка лежит на перeсечении графиков
      else
        writeln('[e');

 end;
end.