% Funcion: Funcion que calcula la desviacion estandar de un arreglo.
% Entrada: Un arreglo de numeros.
% Salida: La desviacion estandar del arreglo.

function std_value = standard_desviation(list)
    len = length(list);
    i = 1;
    average_value = average(list);
    sum = 0;
    while(i <= len)
        sum = sum + (abs(list(i)-average_value)).^2;
        i = i + 1;
    end
    if (len == 0)
        disp("Error: El largo del arreglo es 0")
        std_value = 0;
    else
        std_value = sqrt(sum/len);
    end
end