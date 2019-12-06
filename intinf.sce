function y=f(x)
    y=1/(1+x^2)
endfunction
//Grafico f(x)
x=-2:0.1:2;
plot2d(x, f(x));
//muestra grilla
xgrid(3,1,7);

function p=intinf(a,b,N,f)
    h=(b-a)/n
    x=a // Extremo inferior
    I=0
    for i=1:N
        I=I+f(x);
        x=x+h
    end
    I=I*h
endfunction
    
    
    i=1;
    fa=feval(a,f); //f(a) 
    fb=feval(b,f); //f(b)
    if ((fa*fb) > 0) 
        printf("No existe raiz unica");
    end
    
    Error=(b-a)/2;
    p=a+Error;//a+(b-a)/2 = (2*a+b-a)/2 = (a+b)/2
    printf("\nRaiz provisoria=%12.9f en interacion %d",p,i);
    while(Error>cota_error)
        fp=feval(p,f); //f(p)
        aux=fa*fp;
        if (aux==0)
            Error=0; //fin
        elseif (aux<0)
            b=p;
        else 
            a=p;
        end
    Error=Error/2;
    p=a+Error;
    i=i+1;
    printf("\nRaiz provisoria=%12.9f en interacion %d",p,i);
    end
    printf("\nRaiz=%12.9f",p);
    printf("\nCon un error del %f",Error);
    printf("\nTras %d iteraciones",i);
endfunction
