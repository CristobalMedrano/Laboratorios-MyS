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
H1_open = (4*s)/(3*s+1);
H1_close = feedback(H1_open, 1, -1);

% Función 2
H2_open = (5*s^2 + 7*s + 1)/(s^2 + 6*s + 3);
H2_close = feedback(H2_open, 1);

% Se obtienen los datos de la función de transferencia.
[ H1_open_gain, ...
    H1_open_stime, ...
    H1_open_zeros, ...
    H1_open_poles] = getDataTransferFunction(H1_open);

[ H1_close_gain, ...
    H1_close_stime, ...
    H1_close_zeros, ...
    H1_close_poles] = getDataTransferFunction(H1_close);

[ H2_open_gain, ...
    H2_open_stime, ...
    H2_open_zeros, ...
    H2_open_poles] = getDataTransferFunction(H2_open);

[ H2_close_gain, ...
    H2_close_stime, ...
    H2_close_zeros, ...
    H2_close_poles] = getDataTransferFunction(H2_close);

%Graficos para funcion de transferencia (TF = Transfer Function)
showResponseTFPlot(H1_open, "Respuesta al escalón para lazo abierto H1");
showResponseTFPlot(H1_close, "Respuesta al escalón para lazo cerrado H1");
showResponseTFPlot(H2_open, "Respuesta al escalón para lazo abierto H2");
showResponseTFPlot(H2_close, "Respuesta al escalón para lazo cerrado H2");

%% Parte 2
% Se definen las funciones de transferencia a utilizar
function_1 = (4*s)/(10*s^2 + 4);
function_2 = 3/(6*s + 16);
function_3 = (4*s + 10)/(4*s^3 + 9*s^2 + 5*s);
function_4 = 1/(7*s + 10);
function_5 = (8*s + 8)/(s^3 + 2*s^2 + 3*s);
function_6 = (3*s + 2)/(5*s^2 + 7*s + 10);

% Se define la función de transferencia según el diagrama
H = (function_1 + function_2) + ...
    (feedback(function_3, 1, +1)*(function_4 + function_5)*function_6);

% Se muestra por consola a la función de transferencia
H %#ok<NOPTS>

% Se muestra en um gráfico la respuesta al escalon de la función de 
% transferencia.
showResponseTFPlot(H, "Respuesta al escalón de la función de transferencia");
