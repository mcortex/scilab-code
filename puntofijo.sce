function y=g(x)
    //y=x^4+2*x^2-x-3;
    //y=(-2*x^2+x+3)^(1/4);
    //y=2 ./(3*x)+(2/3)*x; // Si pongo 2/x oscila y no termina ojo!
    //y=%pi+0.5*sin(x/2);
    //y=3/(x^3-3)
    //y=(x+((3*x+3)/x^3))/2
    //y=(x+1)./x^2;
    //y=(3*x+3)^(1/4)
    //y=(4*x+1)^(1/4)
    //y=(3+x-2*x^2)^(1/4)
    y=((3*x^2.+3)/x)^(1/3)
endfunction
 
//Grafico f(x)
x=-10:0.1:10; // desde -5 hasta 5 yendo de 1 en 1
//plot2d(x, g(x));
//muestra grilla
xgrid(3,1,7);


function x=puntofijo(x0,E)
i=1;
Error(1)=100;
x(1)=x0;
while (abs(Error(i))>=E)&i<100
    x(i+1) = g(x(i));
    Error(i+1) = abs(x(i+1)-x(i));
    i=i+1;
end
printf(' i \t      X(i)       Error aprox (i) \n');
for j=1:i;
    printf('%2d \t %11.7f \t %7.3f \n',j-1,x(j),Error(j));
end
endfunction
