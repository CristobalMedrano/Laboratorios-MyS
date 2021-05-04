% Funcion: Funcion que calcula el promedio de un arreglo.
% Entrada: Un arreglo de numeros.
% Salida: El promedio del arreglo.
function result = average(list)
    % Se obtiene el largo del arreglo
    len = length(list);
    i = 1;
    sum = 0;
    % Se suma cada elemento del arreglo
    while (i <= len)
        sum = sum + list(i);
        i = i + 1;
    end
    % Si el largo del arreglo es 0, se retorna 0.
    if (len == 0)
        disp("Error: El largo del arreglo es 0")
        result = 0;
    % Sino se divide la suma del arreglo en su largo
    else
        result = sum/len;
    end
end