function [] = ordineConv(df,x0,zero)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
if round(df(zero),3)==0
    disp("per x0="+x0+" si trova uno zero:"+zero+" e si ha uno zero doppio")
    disp("ordine di convergenza 1")
else
    disp("per x0="+x0+" si trova uno zero:"+zero+" e si ha uno zero singolo")
    disp("ordine di convergenza 2")
end
end

