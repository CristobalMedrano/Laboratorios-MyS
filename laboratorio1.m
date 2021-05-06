%% Laboratorio 1 
% Felipe Gonzalez C. (19.360.650-4)
% Cristóbal Medrano A. (19.083.864-1)

close all

% Formato de salidas
format long

% Directorios:

% functions: Carpeta que contiene funciones del laboratorio.
addpath('./functions')

%% Primera parte
show_graphics();

%% Segunda parte (Newton Rapshon - recursivo)
example_1_polynomial = [1 2 -1 2]; 
example_1_iterations = 10;
example_1_tol = 0.01;
example_1_initial_value = -3;

example_2_polynomial = [1 -7 8 -3 5 2 3 10]; 
example_2_iterations = 5;
example_2_tol = 0.01;
example_2_initial_value = 5;

example_3_polynomial = [1 -7 8 -3 5 2 3 10]; 
example_3_iterations = 9;
example_3_tol = 0.01;
example_3_initial_value = 5;

[root, ...
 error_obtained, ...
 remaining_iterations] = newton_rapshon(example_2_polynomial, ...
                                        example_2_iterations, ...
                                        example_2_tol, ...
                                        example_2_initial_value);
disp('El valor obtenido es:')
disp(root)
disp('El error obtenido es de: ')
disp(error_obtained)
disp('La cantidad de iteraciones usadas es: ')
disp(example_2_iterations - remaining_iterations)



%% Segunta parte (Desviacion estandar)
example_std_1 = [1 2 3 4 5];
example_std_2 = [12 17 40 31 7 22 20 39 11];
example_std_3 = [24 37 29 33 21 8 44 19 47 36 43 14 1 46 3];    

std_value = standard_desviation(example_std_1);
disp('El valor de la desviación estandar es:')
disp(std_value)


