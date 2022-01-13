function [] = fcontourSave(funs,interval,titolo,legenda,color,option,value)
%INPUT
    %funs:      array di funzioni da plottare {f1,f2,...,fn}
    %interval:  array in cui vi sono l'intervallo di x in cui vengono 
    %           plottate le funzioni [x_min,x_max,y_min,y_max]
    %           se si vuole intervallo di default si pone 0
    %titolo:    titolo del grafico e nome della figura salvata
    %legenda:   array di stringhe delle legende [leg1,leg2,...,legn]
    %color:     array di colori da assegnare alle funzioni
    %           ["r","b",...,"blk"]
    %option:    array di opzioni ["LevelList","LevelStep",...,""]
    %value:     valore associto all'opzione selezionata

if interval==0
    for i = 1:length(funs)
        if nargin >=7
            if length(color) > 1
                if option(i) == "LevelList"
                    fcontour(funs(i),"LevelList",value(i),"LineColor",color(i))
                elseif option(i) == "LevelStep"
                    fcontour(funs(i),"LevelStep",value(i),"LineColor",color(i))
                else
                    fcontour(funs(i),"LineColor",color(i))
                end
            else
                if option(i) == "LevelList"
                    fcontour(funs(i),"LevelList",value(i))
                elseif option(i) == "LevelStep"
                    fcontour(funs(i),"LevelStep",value(i))
                else
                    fcontour(funs(i))
                end
            end
        else 
            fcontour(funs(i))
        end
        hold on
    end
else
    for i = 1:length(funs)
        if nargin >=7
            if length(color) > 1
                if option(i) == "LevelList"
                    fcontour(funs(i),interval,"LevelList",value(i),"LineColor",color(i))
                elseif option(i) == "LevelStep"
                    fcontour(funs(i),interval,"LevelStep",value(i),"LineColor",color(i))
                else
                    fcontour(funs(i),interval,"LineColor",color(i))
                end
            else
                if option(i) == "LevelList"
                    fcontour(funs(i),interval,"LevelList",value(i))
                elseif option(i) == "LevelStep"
                    fcontour(funs(i),interval,"LevelStep",value(i))
                else
                    fcontour(funs(i),interval)
                end
            end
        else 
            fcontour(funs(i),interval)
        end
        hold on
    end
end
title(titolo)
if nargin >= 4 && length(legenda) >= length(funs)
    legend(legenda,"location","best")
end
savefig(titolo)
end

