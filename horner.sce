//COMO USAR:

//A=[x0 x1 x2 ... xN]
//D=[f[x0] f[x0 x1] ... f[x0...xN]]
//N=grado del polinomio
//horner(A,D,N,x)

//Grafico f(x)
//x=-10:0.1:10;
//plot2d(x, f(x));
//xgrid(3,1,7); //muestra grilla


function horner(X,d,N,x) // X=vector de raices, d=diferencias divididas, N=grado(P(x))
    p=d(N+1); // es N+1 porque los indices van de 1 a N+1 en lugar de 0 a N
    for i=N:-1:1
        p=d(i)+p*(x-X(i));
    end
    printf("\np=%12.9f",p);
endfunction
