function [] = fplotSave(funs,interval,titolo,legenda,formato)
%INPUT
    %funs:      array di funzioni da plottare {f1,f2,...,fn}
    %interval:  array in cui vi sono l'intervallo di x in cui vengono 
    %           plottate le funzioni [x_min,x_max]
    %titolo:    titolo del grafico e nome della figura salvata
    %legenda:   array di stringhe delle legende [leg1,leg2,...,legn]
    %formato:   array di tipi di linea ["--","*",...,"."]

for i = 1:length(funs)
    if nargin >= 5
        fplot(funs(i),interval,formato(i))
    else
        fplot(funs(i),interval)
    end
    hold on
end
title(titolo)
if nargin >= 4 && length(legenda) >= length(funs)
    legend(legenda,"location","best")
end
savefig(titolo)
end

