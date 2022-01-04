function [] = fsurfSave(funs,interval,titolo,legenda)
%INPUT
    %funs:      array di funzioni da plottare {f1,f2,...,fn}
    %interval:  array in cui vi sono l'intervallo di x in cui vengono 
    %           plottate le funzioni [x_min,x_max,y_min,y_max]
    %titolo:    titolo del grafico e nome della figura salvata
    %legenda:   array di stringhe delle legende [leg1,leg2,...,legn]
figure
for i = 1:length(funs)
    fsurf(funs(i),interval)
    hold on
end
title(titolo)
if nargin >= 4 && length(legenda) > 1
    legend(legenda)
end
savefig(titolo)
end

