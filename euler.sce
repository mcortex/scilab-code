// FUNCION A EVALUAR:
function z=f(t,y)
    //z=%e*t*%e^sin(y);
    //z=t^2*y^4
    //z=t*exp(y)
    //z=4-2*t
    //z=-t*sin(y)
    z=-5*y
endfunction

//function p=g(t)
//    p=-t^2+4*t+2
//endfunction

//Grafico f(x)
//t=-10:0.1:10; // desde -5 hasta 5 yendo de 1 en 1
//plot2d(t, g(t));
//muestra grilla
//xgrid(3,1,7);

function T=euler(t,y,f,h,N) // t=var indep, y=var dep de t, f(t,y(t)), h=paso, N=cantidad de iteraciones
    T=[t y] //matriz de 1 fila x 2 columnas: [t0 y0]
    for i=1:N
        F=f(t,y)
        printf("\nyi= %12.9f + %12.9f * %12.9f ",y,F,h);
        y=y+F*h // calculo yi
        t=t+h // avanzo 
        T=[T;t y] // ";" agrega una fila a la matriz
    end
    t=T(:,1); // convierto la primer columna en un vector fila
    y=T(:,2)'; // convierto la segunda columna en un vector columna
    
    //Grafico f(x)
    plot2d(t,y,style=[color("blue")]);
    
    //muestra grilla
    xgrid(3,1,7);
endfunction




