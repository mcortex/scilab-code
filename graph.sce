function y=f(x)
    //y=exp(x)/2-1-x/2
    //y=9*x^2-2*x
    //y=3*x^3-x^2+1
    //y=(x.*cos(x))./(log(x))
    //y=2*x-%e^(-x)
    //y=%e^(-2*x)+x-1
    //y=x^3-7*x^2+14*x-6
    //y=3*x^3-x^2-1
    //y=x^4-3*x^2-3;
    //y=(x+1)./x^2;
    //y=2 ./(3*x)+(2/3)*x;
    //y=(3*x-3)^(1/4);
    //y=(1 ./x)-(x*3)/3
    //y=%pi+0.5*sin(x/2)
    //y=log(x)
    //y=1./x
    //y=(525*5)./(64*(5*x-1)^(1/4))
    y=-18*(x+2)^(-4)
endfunction
//Grafico f(x)
x=3:0.1:4; // desde -10 hasta 10 yendo de 1 en 1
plot2d(x, f(x));
//muestra grilla
xgrid(3,1,7);
