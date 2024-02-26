function c = multpol(a, n)
    c1 = zeros(1, n);
    c1(1:length(a)) = a; % Assigner les coefficients du polynôme a dans c1
    c = zeros(1, n);

    % Définition du polynôme x^2 + 1
    u = [1 0 1];

    for i = 0:n-1
        for j = 0:length(a)-1
            for k = 0:2
                if j + k == i
                    c(i+1) = c(i+1) + c1(j+1) * u(k+1);
                end
            end
        end
    end
end
