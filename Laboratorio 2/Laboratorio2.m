% Laboratorio 1
%% Sección 1: Declaración de directorios.
% Laboratorio 2
% Felipe Gonzalez C. (19.360.650-4)
% Cristóbal Medrano A. (19.083.864-1)

close all

% Formato de salidas
format long

% Directorios:

% functions: Carpeta que contiene funciones del laboratorio.
addpath('./functions')

% Se crea el modelo para función de transferencia 's' .
s = tf('s');

%% Parte 1
% Se definen las funciones de transferencia de la función 1 y 2.
% Función 1
H1 = 4*s / (3*s+1);
H2 = feedback(H1,1);

% Función 2
H3 = (5*s^2 + 7*s + 1)/(s^2 + 6*s + 3);
H4 = feedback(H3, 1);

% Se obtienen los datos de la función de transferencia.
[ func_1_gain, func_1_stime, func_1_zeros, func_1_poles] = getDataTransferFunction(H1);
[ func_2_gain, func_2_stime, func_2_zeros, func_2_poles] = getDataTransferFunction(H1);
[ func_3_gain, func_3_stime, func_3_zeros, func_3_poles] = getDataTransferFunction(H1);
[ func_4_gain, func_4_stime, func_4_zeros, func_4_poles] = getDataTransferFunction(H1);

%Graficos para funcion de transferencia (TF = Transfer Function)
showResponseTFPlot(H1, "Respuesta al escalón para lazo abierto F1");
showResponseTFPlot(H2, "Respuesta al escalón para lazo cerrado F1");
showResponseTFPlot(H3, "Respuesta al escalón para lazo abierto F2");
showResponseTFPlot(H4, "Respuesta al escalón para lazo cerrado F2");

%% Parte 2
% Se definen las funciones de transferencia a utilizar
H1 = (4*s)/(10*s^2 + 4);
H2 = 3/(6*s + 16);
H3 = (4*s + 10)/(4*s^3 + 9*s^2 + 5*s);
H4 = 1/(7*s + 10);
H5 = (8*s + 8)/(s^3 + 2*s^2 + 3*s);
H6 = (3*s + 2)/(5*s^2 + 7*s + 10);

%se define la función de transferencia según el diagrama
H = H1 + H2 + (feedback(H3, 1, +1)*(H4 + H5)*H6);

%se muestra la función de transferencia
showResponseTFPlot(H, "Respuesta al escalón de la función de transferencia");
