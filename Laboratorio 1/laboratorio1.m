% Laboratorio 1
%% Sección 1: Declaración de directorios.
% Laboratorio 1
% Felipe Gonzalez C. (19.360.650-4)
% Cristóbal Medrano A. (19.083.864-1)

close all

% Formato de salidas
format long

% Directorios:

% functions: Carpeta que contiene funciones del laboratorio.
addpath('./functions')

%% Sección 2: Parte 1 - Gráficos de funciones a, b y c.
% Funcion que permite obtener el logaritmo de x con base c
log_base_c = @(x, c) log(x)/log(c);

% Funcion que permite obtener el logaritmo natural de x
log_n = @(x) log(x);

% Se definen las funciones del enunciado a, b y c.
a = @(x) 6 * log_base_c((5 * x + 15), 4) - log_base_c((2 * x), 2);
b = @(x) sin(6 * log_base_c((2 * x + 9), 10)) + cos(2 * log_n(x + 16));
c = @(x) 2 * exp(2 * x + 3);

% Se definen los dominios correspondientes.
domain_ab = 0:.01:(15 * pi);    % dominio de las funciones a y b.
domain_c = -10:.05:10;          % dominio de la funcion c.

% Se obtiene el recorrido de cada función a, b y c.
range_a  = a(domain_ab);
range_b  = b(domain_ab);
range_c  = c(domain_c);

disp('Mostrando gráficos')
% Se crean los gráficos de cada función (a y b)
figure('Name', 'Función a(x)');
title_a = 'a(x) = 6log_4(5x + 15) - log_2(2x)';
plot(domain_ab, range_a, 'r*');
grid on;
title('Gráfico de a(x)', 'FontSize', 16);
ylabel('y', 'FontSize', 14);
xlabel('x', 'FontSize', 14);
legend(title_a, 'Location', 'southoutside', 'FontSize', 12);

figure('Name', 'Función b(x)');
title_b = 'b(x) = sen(6log_1_0(2x + 9)) + cos(2ln(x + 16))';
plot(domain_ab, range_b, 'g+');
grid on;
title('Gráfico de b(x)', 'FontSize', 16);
ylabel('y', 'FontSize', 14);
xlabel('x', 'FontSize', 14);
legend(title_b, 'Location', 'southoutside', 'FontSize', 12);

% Se crea el gráfico de a y b en conjunto
figure('Name', 'Función a(x) y b(x)');
plot(domain_ab, range_a, 'r*', domain_ab, range_b, 'g+');
grid on;
title('Gráfico de a(x) y b(x)', 'FontSize', 16);
ylabel('y', 'FontSize', 14);
xlabel('x', 'FontSize', 14);
legend(title_a, title_b, 'Location', 'southoutside', 'FontSize', 12);

% Se crean los gráficos para la funcion c.
figure('Name', 'Función c(x)');
title_c = 'c(x) = 2e^(^2^x ^+ ^3^)';
plot(domain_c, range_c, 'b-');
grid on;
title('Gráfico de c(x) en escala Normal', 'FontSize', 16);
ylabel('y', 'FontSize', 14);
xlabel('x', 'FontSize', 14);
legend(title_c, 'Location', 'southoutside', 'FontSize', 12);

figure('Name', 'Función c(x) - Logarítmica');
semilogy(domain_c, range_c, 'b-');
grid on;
title('Gráfico de c(x) en escala Logarítmica', 'FontSize', 16);
ylabel('y', 'FontSize', 14);
xlabel('x', 'FontSize', 14);
legend(title_c, 'Location', 'southoutside', 'FontSize', 12);

%% Sección 3: Parte 2a - Newton Rapshon
example_1_polynomial = [1 2 -1 2]; 
example_1_iterations = 10;
example_1_tol = 0.01;
example_1_initial_value = -3;

example_2_polynomial = [1 -7 8 -3 5 2 3 10]; 
example_2_iterations = 8;
example_2_tol = 0.01;
example_2_initial_value = 5;

example_3_polynomial = [1 -7 8 -3 5 2 3 10]; 
example_3_iterations = 15;
example_3_tol = 0.01;
example_3_initial_value = 5;

[example_1_root, ...
 example_1_error_obtained, ...
 example_1_remaining_iterations] = newton_rapshon(...
                                        example_1_polynomial, ...
                                        example_1_iterations, ...
                                        example_1_tol, ...
                                        example_1_initial_value);

[example_2_root, ...
 example_2_error_obtained, ...
 example_2_remaining_iterations] = newton_rapshon(...
                                        example_2_polynomial, ...
                                        example_2_iterations, ...
                                        example_2_tol, ...
                                        example_2_initial_value);
                                    
[example_3_root, ...
 example_3_error_obtained, ...
 example_3_remaining_iterations] = newton_rapshon(...
                                        example_3_polynomial, ...
                                        example_3_iterations, ...
                                        example_3_tol, ...
                                        example_3_initial_value);

show_newton_rapshon(example_1_root, ...
                    example_1_error_obtained, ...
                    example_1_remaining_iterations, ...
                    example_1_iterations, ...
                    'Ejemplo 1')
                
show_newton_rapshon(example_2_root, ...
                    example_2_error_obtained, ...
                    example_2_remaining_iterations, ...
                    example_2_iterations, ...
                    'Ejemplo 2')
                
show_newton_rapshon(example_3_root, ...
                    example_3_error_obtained, ...
                    example_3_remaining_iterations, ...
                    example_3_iterations, ...
                    'Ejemplo 3')

%% Sección 4: Parte 2b - Desviación estandar
example_std_1 = [1 2 3 4 5];
example_std_2 = [12 17 40 31 7 22 20 39 11];
example_std_3 = [24 37 29 33 21 8 44 19 47 36 43 14 1 46 3];    

example_std_1_value = standard_desviation(example_std_1);
example_std_2_value = standard_desviation(example_std_2);
example_std_3_value = standard_desviation(example_std_3);

show_std(example_std_1_value, 'Ejemplo 1')
show_std(example_std_2_value, 'Ejemplo 2')
show_std(example_std_3_value, 'Ejemplo 3')

