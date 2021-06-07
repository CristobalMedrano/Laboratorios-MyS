% Funcion: Funcion que calcula el promedio de un arreglo.
% Entrada: Un arreglo de numeros.
% Salida: El promedio del arreglo.
function result = average(list)
    % Se obtiene el largo del arreglo
    len = length(list);
    
    % Se suma cada elemento del arreglo
    s = sum(list);
    % Si el largo del arreglo es 0, se retorna 0.
    if (len == 0)
        disp("Error: El largo del arreglo es 0")
        result = 0;
    % Sino se divide la suma del arreglo en su largo
    else
        result = s/len;
    end
end