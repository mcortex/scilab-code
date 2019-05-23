function y=f(x)
    //y=exp(x)/2-1-x/2
    //y=9*x^2-2*x
    y=3*x^3-x^2+1
endfunction
//Grafico f(x)
x=-10:0.1:10; // desde -10 hasta 10 yendo de 1 en 1
plot2d(x, f(x));
//muestra grilla
xgrid(3,1,7);
