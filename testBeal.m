function testBealConjecture()

    % Define the range of values for A, B, C, x, y, and z
    A_range = 1:100;    % Modify the range as needed
    B_range = 1:100;    % Modify the range as needed
    C_range = 1:100;    % Modify the range as needed
    x_range = 3:10;     % Modify the range as needed
    y_range = 3:10;     % Modify the range as needed
    z_range = 3:10;     % Modify the range as needed

    % Loop through all combinations of A, B, C, x, y, and z
    for A = A_range
        for B = B_range
            for C = C_range
                for x = x_range
                    for y = y_range
                        for z = z_range
                            % Check if A, B, and C do not share a common prime factor
                            if gcd(A, B) == 1 && gcd(A, C) == 1 && gcd(B, C) == 1
                                % Use vpa to perform arithmetic with higher precision
                                sum_powers = vpa(A)^x + vpa(B)^y;
                                C_power = vpa(C)^z;

                                % Check if A^x + B^y = C^z
                                if sum_powers == C_power
                                    % Report the values when the equation holds, and A, B, and C do not share a common prime factor
                                    disp(['Conjecture holds for A=', num2str(A), ...
                                        ', B=', num2str(B), ', C=', num2str(C), ...
                                        ', x=', num2str(x), ', y=', num2str(y), ', z=', num2str(z)]);
                                end
                            end
                        end
                    end
                end
            end
        end
    end
end
