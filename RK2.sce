// FUNCION A EVALUAR:
function z=f(t,y)
    //z=%e*t*%e^sin(y);
    //z=t^2*y^4
    //z=t*exp(y)
    //z=4-2*t
    //z=-2*t*y
    z=-t*y
endfunction


//function p=g(t)
//    p=-t^2+4*t+2
//endfunction

//Grafico f(x)
//t=-5:0.1:5; // desde -5 hasta 5 yendo de 1 en 1
//plot2d(t, g(t));
//muestra grilla
//xgrid(3,1,7);


function T=RK2(t,y,f,h,N) // t=var indep, y=var dep de t, f(t,y(t)), h=paso, N=cantidad de iteraciones
    T=[t y] //matriz de 1 fila x 2 columnas: [t0 y0]
    for i=1:N
        K1=f(t,y)*h
        t=t+h
        K2=f(t,(y+K1))*h
        printf("\ny%d= %12.9f + ( %12.9f + %12.9f ) / 2 ",i,y,K1,K2);
        y=y+(K1+K2)/2 // calculo yi
        T=[T;t y] // ";" agrega una fila a la matriz
    end
    t=T(:,1);
    y=T(:,2)';
    
    //Grafico f(x)
    plot2d(t,y,style=[color("red")]);
    
    //muestra grilla
    xgrid(3,1,7);
endfunction
