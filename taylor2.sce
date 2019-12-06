// FUNCION A EVALUAR:
function z1=d1(t,y)
    //z1=t*exp(y)
    z1=0.5*t*y
endfunction

function z2=d2(t,y,y1)
    //z2=exp(y)*(1+t*y1)
    z2=0.5*(t+y*y1)
endfunction


function T=taylor2(t,y,d1,d2,h,N) // t=var indep, y=var dep de t, f(t,y(t)), h=paso, N=cantidad de iteraciones
    T=[t y] //matriz de 1 fila x 2 columnas: [t0 y0]
    for i=1:N
        Y1=d1(t,y)
        Y2=d2(t,y,Y1)
        printf("\nyi= %12.9f + %12.9f * %12.9f + %12.9f * %12.9f * 0.5",y,Y1,h,Y2,(h^2));
        y=y+Y1*h+Y2*(h^2)*0.5 // calculo yi
        t=t+h // avanzo 
        T=[T;t y] // ";" agrega una fila a la matriz
    end
    t=T(:,1);
    y=T(:,2)';
    
    //Grafico f(x)
    plot2d(t,y);
    
    //muestra grilla
    xgrid(3,1,7);
endfunction
