function systematicBealTest()

    % Define the range of values for A, B, C, x, y, and z
    A_range = 1:100;    % Modify the range as needed
    B_range = 1:100;    % Modify the range as needed
    C_range = 1:100;    % Modify the range as needed
    x_range = 3:10;     % Modify the range as needed
    y_range = 3:10;     % Modify the range as needed
    z_range = 3:10;     % Modify the range as needed

    % Test 1: Small Values of A, B, and C
    disp('Testing Small Values of A, B, and C:');
    testBealConjecture(A_range, B_range, C_range, x_range, y_range, z_range);

    % Test 2: Large Values of A, B, and C
    disp('Testing Large Values of A, B, and C:');
    A_range_large = 10^14 : 10^15;   % Modify the range as needed
    B_range_large = 10^14 : 10^15;   % Modify the range as needed
    C_range_large = 10^14 : 10^15;   % Modify the range as needed
    testBealConjecture(A_range_large, B_range_large, C_range_large, x_range, y_range, z_range);

    % Test 3: Primes and Prime Powers
    disp('Testing Primes and Prime Powers:');
    primes_range = primes(100);  % Modify the range as needed
    primes_powers_range = 2:5;   % Modify the range as needed
    testBealConjecture(primes_range, primes_range, primes_range, primes_powers_range, primes_powers_range, primes_powers_range);

    % Test 4: Consecutive Numbers
    disp('Testing Consecutive Numbers:');
    consecutive_range = 1:10;   % Modify the range as needed
    testBealConjecture(consecutive_range, consecutive_range+1, consecutive_range+2, x_range, y_range, z_range);

    % Test 5: Fibonacci Numbers
    disp('Testing Fibonacci Numbers:');
    fibonacci_range = generateFibonacciNumbers(20);  % Modify the range as needed
    testBealConjecture(fibonacci_range, fibonacci_range, fibonacci_range, x_range, y_range, z_range);

    % Test 6: Lucas Numbers
    disp('Testing Lucas Numbers:');
    lucas_range = generateLucasNumbers(20);   % Modify the range as needed
    testBealConjecture(lucas_range, lucas_range, lucas_range, x_range, y_range, z_range);

    % Test 7: Special Exponents
    disp('Testing Special Exponents:');
    special_exponents_range = [2, 3, 5, 7];   % Modify the range as needed
    testBealConjecture(A_range, B_range, C_range, special_exponents_range, special_exponents_range, special_exponents_range);

    % Test 8: Specific Diophantine Equations
    disp('Testing Specific Diophantine Equations:');
    % You can add specific Diophantine equations to test here
    % For example: testBealConjecture(A_range, B_range, C_range, x_range, y_range, 2*x_range);

end

function testBealConjecture(A_range, B_range, C_range, x_range, y_range, z_range)
    % Loop through all combinations of A, B, C, x, y, and z
    for A = A_range
        for B = B_range
            for C = C_range
                for x = x_range
                    for y = y_range
                        for z = z_range
                            % Check if A, B, and C do not share a common factor
                            if gcd(A, B) == 1 && gcd(A, C) == 1 && gcd(B, C) == 1
                                % Use vpa to perform arithmetic with higher precision
                                sum_powers = vpa(A)^x + vpa(B)^y;
                                C_power = vpa(C)^z;

                                % Check if A^x + B^y = C^z
                                if sum_powers == C_power
                                    % Report the values when the equation holds, and A, B, and C do not share a common factor
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

function fibonacci_numbers = generateFibonacciNumbers(n)
    % Generate the first n Fibonacci numbers
    fibonacci_numbers = zeros(1, n);
    fibonacci_numbers(1) = 0;
    fibonacci_numbers(2) = 1;
    for i = 3:n
        fibonacci_numbers(i) = fibonacci_numbers(i-1) + fibonacci_numbers(i-2);
    end
end

function lucas_numbers = generateLucasNumbers(n)
    % Generate the first n Lucas numbers
    lucas_numbers = zeros(1, n);
    lucas_numbers(1) = 2;
    lucas_numbers(2) = 1;
    for i = 3:n
        lucas_numbers(i) = lucas_numbers(i-1) + lucas_numbers(i-2);
    end
end