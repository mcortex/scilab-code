function y=f(x)
    y=(1-x^2)^(3/2)
endfunction
//Grafico f(x)
x=3:0.1:4; // desde -10 hasta 10 yendo de 1 en 1
plot2d(x, f(x));
//muestra grilla
xgrid(3,1,7);
