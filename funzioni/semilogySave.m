function [] = semilogySave(x,y,titolo,legenda,formato)

%INPUT
    %x:         array di array di ascisse da plottare {[x1],[x2],...,[xn]}
    %y:         array di array di ordinate da plottare {[y1],[y2],...,[yn]}
    %titolo:    titolo del grafico e nome della figura salvata
    %legenda:   array di stringhe delle legende [leg1,leg2,...,legn]
    %formato:   array di tipi di linea ["--","*",...,"."]

figure
for i = 1:length(x)
    if nargin >= 5
        semilogy(cell2mat(x(i)),cell2mat(y(i)),formato(i))
    else
        semilogy(cell2mat(x(i)),cell2mat(y(i)))
    end
    hold on
end
title(titolo)
if nargin >= 4 && length(legenda) > 1
    legend(legenda)
end
savefig(titolo)
end
