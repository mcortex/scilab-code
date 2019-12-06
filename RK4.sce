// FUNCION A EVALUAR:
function z=f(t,y)
    //z=%e*t*%e^sin(y);
    //z=t^2*y^4
    z=t*%e^y
endfunction


function T=RK4(t,y,f,h,N) // t=var indep, y=var dep de t, f(t,y(t)), h=paso, N=cantidad de iteraciones
    T=[t y] //matriz de 1 fila x 2 columnas: [t0 y0]
    for i=1:N
        K1=f(t,y)*h
        t=t+h/2
        K2=f(t,y+K1/2)*h
        K3=f(t,y+K2/2)*h
        t=t+h/2
        K4=f(t,y+K3)*h
        printf("\nyi= %12.9f + ( %12.9f + 2 * ( %12.9f + %12.9f ) + %12.9f ) / 6 ",y,K1,K2,K3,K4);
        y=y+(K1+2*(K2+K3)+K4)/6 // calculo yi
        T=[T;t y] // ";" agrega una fila a la matriz
    end
    t=T(:,1);
    y=T(:,2)';
    
    //Grafico f(x)
    plot2d(t,y);
    
    //muestra grilla
    xgrid(3,1,7);
endfunction
