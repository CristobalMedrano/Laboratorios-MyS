% Funcion: Funcion que calcula la desviacion estandar de un arreglo.
% Entrada: Un arreglo de numeros.
% Salida: La desviacion estandar del arreglo.

function std_value = standard_desviation(list)
    len = length(list);
    average_value = average(list);
    s = sum((abs(list-average_value)).^2);
    if (len == 0)
        disp("Error: El largo del arreglo es 0")
        std_value = 0;
    else
        std_value = sqrt(s/len);
    end
end