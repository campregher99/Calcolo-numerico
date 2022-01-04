function [zero,fval,iter,flag] = bisezione(f,a,b,tol,Nmax)
    iter = 0;
    if f(a)*f(b)>0
        flag=0;
        zero =null(1);
        fval = null(1);
        return
    end
    while ((b-a)/(2*max(abs(a),abs(b)))) > tol && iter<Nmax
        iter = iter + 1;
        c = (a+b)/2;
        fc=f(c);
        if fc == 0 
            break
        end
        if f(a)*fc<=0
            b=c;
        elseif f(b)*fc<=0
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
    flag = 1;
end

