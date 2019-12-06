function y=f(x)
    //y=x^2-7
    //y=x^2-10*cos(x)
    //y=3*x^3-x^2-1
    //y=x^7-0.001
    //y=3*x^5-sin(x)
    y=x^3-5
endfunction

function y=df(x)
    //y=2*x
    //y=2*x+10*sin(x)
    //y=9*x^2-2*x
    //y=7*x^6
    //y=15*x^4-cos(x)
    y=3*x^2
endfunction

//Grafico f(x)
x=-5:0.1:5; // desde -10 hasta 10 yendo de 1 en 1
plot2d(x, f(x));
plot2d(x, df(x));
//muestra grilla
xgrid(3,1,7);

function x=newton(pi,cota_error)
    x(1)=pi;
    n=1;
    Error=abs(x(1));
    //Error=abs(sqrt(7)-x(1));
    while(Error>cota_error)
        x(n+1)=x(n)-f(x(n))/df(x(n));
        Error=abs(x(n+1)-x(n));
        //Error=abs(sqrt(7)-x(1));
        printf("\nx(n+1)=%12.9f = x(n)=%12.9f - f(x(n))=%12.9f / df(x(n))=%12.9f (E=%12.9f)",x(n+1),x(n),f(x(n)),df(x(n)),Error);
        n=n+1;
    end
    printf("\nRaiz=%12.9f",x(n));
    printf("\nCon un error del %f",Error);
    printf("\nTras %d iteraciones",n-1);
endfunction
