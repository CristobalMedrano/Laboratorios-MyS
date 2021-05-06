% Función: Muestra el resultado de newton rapshon de forma ordenada
% Entrada: Valor de la raiz, Error obtenido, Iteraciones restantes,
%          Iteraciones máximas, titulo del ejemplo
% Salida: No posee.

function show_newton_rapshon(root, error, remaining_iters, max_iters, title)
root_text = ['Valor de la raiz: ', num2str(root, '%f')];
error_text = ['Error obtenido: ', num2str(error, '%f')];
iters_text = ['Iteraciones usadas: ', num2str(max_iters - remaining_iters), ' de ', ...
                num2str(max_iters)];  

fprintf('\n-----   Resultados %s -----\n', title)
fprintf('Valor de la raiz: %f\n', root)
fprintf('Error obtenido: %f\n', error)
fprintf('Iteraciones usadas: %d de %d', (max_iters - remaining_iters), max_iters)
fprintf('\n')
end