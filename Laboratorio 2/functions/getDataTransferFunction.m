% Entradas
% transfer_func: Función de transferencia

% Funcionamiento: Función que calcula los ganancia estática, 
% tiempo de estabilización, ceros y polos para la función de 
% transferencia entregada como entrada.

% Salidas: 
% gain: Ganancia estática
% stabilization_time: tiempo de estabilización
% zeros: Ceros
% poles: Polos

function [gain, stabilization_time, zeros, poles] = getDataTransferFunction(transfer_func)
    [zeros, gain] = zero(transfer_func);
    stabilization_time = stepinfo(transfer_func).SettlingTime;
    poles = pole(transfer_func);
end
    