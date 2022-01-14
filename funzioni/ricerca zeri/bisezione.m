function [zero,fval,iter,flag] = bisezione(f,a,b,tol,Nmax)
%INPUT:
    %f: funzione
    %a,b:   intervallo in cui cercare
    %tol:   tolleranza
    %Nmax: numero di iterazioni massime
%OUTPUT:
    %zero:  valore di x dove si trova lo zero di funzione
    %fval:  valore della funzione nel punto trovato
    %iter:  numero di iterazioni utilizzate
    %flag:  indica se è possibile applicare il procedimento f(a)*f(b) <= 0
    
    iter = 0;
    if f(a)*f(b)>0
        flag = false;
        zero = null(1);
        fval = null(1);
        return
    end
    while ((b-a)/(2*max(abs(a),abs(b)))) > tol && iter<Nmax
        iter = iter + 1;
        c = (a+b)/2;
        fc=f(c);
        fa=f(a);
        fb=f(b);
        if fc == 0
            break
        elseif fa == 0
            c=a;
            break;
        elseif fb == 0
            c=b;
            break;
        end
        if fa*fc<0
            b=c;
        elseif fb*fc<0
            a=c;
        else
            flag=0;
            zero =null(1);
            fval = null(1);
            return
        end 
    end

    zero = c;
    fval = f(zero);
    flag = true;
end

