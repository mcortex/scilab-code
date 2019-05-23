function y=f(x)
    y=x^2-7
    //y=x^4-2*x^2-12*x+16*x-40
    //y=cos(x)-x
endfunction
//Grafico f(x)
x=-10:1:10;
plot2d(x, f(x));
//muestra grilla
xgrid(1);


//Pedir datos al usuario
//clc()
//a=input("Ingrese el limite inferior del intervalo para esta funcion:");
//b=input("Ingrese el limite superior del intervalo para esta funcion:");
//cota_error=input("\n Ingrese el error permitido como criterio de corte de la ecuacion:");

function p=biseccion(a,b,f,cota_error)
    i=1;
    fa=feval(a,f); //f(a) 
    fb=feval(b,f); //f(b)
    
    Error=(b-a)/2;
    p=a+Error;
    
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
