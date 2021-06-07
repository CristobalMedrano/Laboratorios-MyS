% Entradas
% transfer_func: Función de transferencia
% title_text: Título del texto

% Funcionamiento: Gráfica la respuesta a la función de transferencia

%Salidas: 
% Gráfico de la respuesta a la funcion de transferencia en el tiempo
function showResponseTFPlot(transfer_func, title_text)
figure('Name', title_text);
step(transfer_func);
title(title_text, 'FontSize', 16);
ylabel('Amplitud', 'FontSize', 14);
xlabel('Tiempo', 'FontSize', 14);
grid on;
