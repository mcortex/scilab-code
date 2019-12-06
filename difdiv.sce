//COMO USAR:

//A=[x0 x1 x2 ... xN]
//B=[y0 y1 y2 ... yN]
//N=grado del polinomio
//difdiv(A,B,N)

//Grafico f(x)
//x=-10:0.1:10;
//plot2d(x, f(x));
//xgrid(3,1,7); //muestra grilla


function difdiv(X,Y,N) // x, y=f(x), N=grado(P(x)) 
    for i=1:N
        for j=N+1:-1:i+1
            Y(j)=(Y(j)-Y(j-1))/(X(j)-X(j-i))
            if (i-1)==0
               printf("\nf[x%d,x%d]=%12.9f",i-1,j-1,Y(j)); 
            end
        end
    end
    printf("\nf[x0]=%12.9f",Y(1));
endfunction
