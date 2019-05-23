function y=g(x)
    //y=x^4+2*x^2-x-3;
    y=2/(3*x)+(2/3)*x; // Si pongo 2/x oscila y no termina ojo!
endfunction
 
//Grafico f(x)
x=-5:1:5; // desde -5 hasta 5 yendo de 1 en 1
plot2d(x, f(x));
//muestra grilla
xgrid(3,1,7);


function x=puntofijo(x0,tol)
i=1;
ea(1)=100;
x(1)=x0;
while (abs(ea(i))>=tol)
    x(i+1) = g(x(i));
    ea(i+1) = abs(x(i+1)-x(i));
    i=i+1;
end
printf(' i \t      X(i)       Error aprox (i) \n');
for j=1:i;
    printf('%2d \t %11.7f \t %7.3f \n',j-1,x(j),ea(j));
end
endfunction
