function show_graphics() 
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

% Se crean los gráficos de cada función (a y b)
figure('Name', 'Función a(x)');
title_a = 'a(x) = 6log_4(5x + 15) - log_2(2x)';
plot(domain_ab, range_a, 'r*');
grid on;
title('Gráfico de a(x)', 'FontSize', 18);
ylabel('y', 'FontSize', 14);
xlabel('x', 'FontSize', 14);
legend(title_a, 'Location', 'southoutside', 'FontSize', 12);

figure('Name', 'Función b(x)');
title_b = 'b(x) = sen(6log_1_0(2x + 9)) + cos(2ln(x + 16))';
plot(domain_ab, range_b, 'g+');
grid on;
title('Gráfico de b(x)', 'FontSize', 18);
ylabel('y', 'FontSize', 14);
xlabel('x', 'FontSize', 14);
legend(title_b, 'Location', 'southoutside', 'FontSize', 12);

% Se crea el gráfico de a y b en conjunto
figure('Name', 'Función a(x) y b(x)');
plot(domain_ab, range_a, 'r*', domain_ab, range_b, 'g+');
grid on;
title('Gráfico de a(x) y b(x)', 'FontSize', 18);
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
end