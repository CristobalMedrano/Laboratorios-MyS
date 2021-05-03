function [root, error_obtained, remaining_iterations] = newton_rapshon(...
                                polynomial, iterations, tol, initial_value)

    error = abs(polyval(polynomial, initial_value));
    derivate = polyder(polynomial);

    % Caso base
    if (error <= tol || iterations == 0)
        root = initial_value;
        error_obtained = error;
        remaining_iterations = iterations;
    elseif (derivate == 0)
        disp("Error, la derivada es 0.")
        root = initial_value;
        error_obtained = error;
        remaining_iterations = iterations;
    else
        new_initial_value = initial_value - polyval(polynomial, initial_value)/polyval(derivate, initial_value);
        [root, ...
         error_obtained,...
         remaining_iterations] = newton_rapshon(polynomial, ...
                                                iterations - 1, ...
                                                tol, ...
                                                new_initial_value);
    end
end

