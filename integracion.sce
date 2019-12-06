function y=f(x)
    //y=1./(1+x^2)
    //y=x
    //y=(1-x^2)^(3/2)
    //y=log(3+x)
    y=1./(x-1)
endfunction
//Grafico f(x)
x=-2:0.1:2;
plot2d(x, f(x));
//muestra grilla
xgrid(3,1,7);

function I=inf(a,b,N,f)
    h=(b-a)/N
    printf("\nTamanio del paso h = %12.9f",h);
    x=a // Extremo inferior
    I=0
    for i=0:N
        I=I+f(x);
        printf("\n Sumatoria de f(x)=%12.9f en paso N=%d = %12.9f",x,i,I);
        x=x+h
    end
    I=I*h
    printf("\nI = %12.9f en paso N=%d",I,i);
endfunction

function I=sup(a,b,N,f)
    h=(b-a)/N
    printf("\nTamanio del paso h = %12.9f",h);
    x=b // Extremo superior
    I=0
    for i=1:N
        I=I+f(x);
        printf("\n Sumatoria de f(x)=%12.9f en paso N=%d = %12.9f",f(x),i,I);
        x=x+h
    end
    I=I*h
    printf("\nI = %12.9f en paso N=%d",I,i);
endfunction

function I=med(a,b,N,f)
    h=(b-a)/N
    printf("\nTamanio del paso h = %12.9f",h);
    x=a
    I=0
    for i=1:N
        pmed=(x+h/2) // Punto medio
        I=I+f(pmed);
        printf("\n Sumatoria de f(x)=%12.9f en paso N=%d = %12.9f",f(pmed),i,I);
        x=x+h
    end
    I=I*h
    printf("\nI = %12.9f en paso N=%d",I,i);
endfunction

function I=trapecio(a,b,N,f)
    h=(b-a)/N
    printf("\nTamanio del paso h = %12.9f",h);
    x=(a+h/2) // Extremo inferior
    I=0
    for i=1:N-1
        I=I+f(x);
        printf("\n Sumatoria de f(x)=%12.9f en paso N=%d = %12.9f",f(x),i,I);
        x=x+h
    end
    I=(h/2)*(f(a)+f(b)+2*I)
    printf("\nI = %12.9f en paso N=%d",I,i);
endfunction

function I=simpson(a,b,N,f)
    k=(b-a)/(2*N)
    printf("\nTamanio del paso h = %12.9f",k*2);
    x=a+k
    I1=0
    I2=0
    for i=1:N-1
        I1=I1+f(x);
        x=x+k
        I2=I2+f(x);
        x=x+k
        printf("\n Sumatoria de f(x)=%12.9f en paso N=%d en el punto medio",I1,i);
        printf("\n Sumatoria de f(x)=%12.9f en paso N=%d en el extremo superior",I2,i);
    end
    I=(k/3)*(f(a)+f(b)+2*I2+4*(I1+f(x)))
    printf("\nI = %12.9f en paso N=%d",I,i+1);
endfunction

