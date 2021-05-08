% Funcion: Funcion que aplica el metodo de Newton Raphson de forma recursiva,
% esta funcion busca la raiz de un polinomio a partir de un valor inicial 
% entregado el cual se va aproximando en cada iteracion hasta que la raiz se
% aproxime al valor de la raiz real. 
% El caso base de la funciones es que el error sea menor a la tolerancia 
% ingresada o que las iteraciones se acaben.
% Entradas:
% polynomial: polinomio ingresado
% iterations: numero de itraciones maximas
% tol: tolerancia al error
% initial_value: valor inicial
% Salidas:
% root: Valor de la raiz aproximado
% error_obtained: Error obtenido
% remaining_iterations: Iteraciones restantes

function [root, error_obtained, remaining_iterations] = newton_rapshon(...
                                polynomial, iterations, tol, initial_value)

    % Se obtiene el valor del error actual.
    error = abs(polyval(polynomial, initial_value));

    % Se calcula la derivada del polinomio
    dx_poly = polyval(polyder(polynomial), initial_value);

    % Caso base
    if (error <= tol || iterations == 0)
        root = initial_value;
        error_obtained = error;
        remaining_iterations = iterations;
    % Caso invalido del algoritmo de newton rapshon
    elseif (dx_poly == 0)
        disp("Error, la derivada es 0.")
        root = initial_value;
        error_obtained = error;
        remaining_iterations = iterations;
    % Si no
    else
        % Siguiendo la aproximacion de newton rapshon se calcula la nueva raiz.
        poly = polyval(polynomial, initial_value);
        new_root = initial_value - poly/dx_poly;
        [root, ...
         error_obtained,...
         remaining_iterations] = newton_rapshon(polynomial, ...
                                                iterations - 1, ...
                                                tol, ...
                                                new_root);
    end
end