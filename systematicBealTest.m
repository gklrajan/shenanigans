%% some background
% The Beal Conjecture is a mathematical hypothesis proposed by businessman
% Andrew Beal in 1993. It posits that for any three positive integers A, B,
% and C, and any positive integers x, y, and z (greater than 2), if A^x +
% B^y = C^z, then A, B, and C must have a common prime factor. The
% conjecture remains unproven, and a counterexample has not been found to
% disprove it, making it one of the unsolved problems in number theory.
% Andrew Beal established a $1 million prize for anyone who can provide a
% valid proof or disprove the conjecture.

%%
    % Define the range of values for A, B, C, x, y, and z
    A_range = 1:15;    % Modify the range as needed
    B_range = 1:15;    % Modify the range as needed
    C_range = 1:15;    % Modify the range as needed
    x_range = 3:11;     % Modify the range as needed
    y_range = 3:11;     % Modify the range as needed
    z_range = 3:11;     % Modify the range as needed

    % Test 1: Small Values of A, B, and C
    disp('Testing Small Values of A, B, and C:');
    testBealConjecture(A_range, B_range, C_range, x_range, y_range, z_range);

    % Test 2: Large Values of A, B, and C
    disp('Testing Large Values of A, B, and C:');
    A_range_large = 10^8 : 10^9;   % Modify the range as needed
    B_range_large = 10^8 : 10^9;   % Modify the range as needed
    C_range_large = 10^8 : 10^9;   % Modify the range as needed
    testBealConjecture(A_range_large, B_range_large, C_range_large, x_range, y_range, z_range);

    % Test 3: Primes and Prime Powers
    disp('Testing Primes and Prime Powers:');
    primes_range = primes(100);  % Modify the range as needed
    primes_powers_range = 3:9;   % Modify the range as needed
    testBealConjecture(primes_range, primes_range, primes_range, primes_powers_range, primes_powers_range, primes_powers_range);

    % Test 4: Consecutive Numbers
    disp('Testing Consecutive Numbers:');
    consecutive_range = 1:10;   % Modify the range as needed
    testBealConjecture(consecutive_range, consecutive_range+1, consecutive_range+2, x_range, y_range, z_range);

    % Test 5: Fibonacci Numbers
    disp('Testing Fibonacci Numbers:');
    fibonacci_range = generateFibonacciNumbers(20);  % Modify the range as needed
    testBealConjecture(fibonacci_range(2:1:end), fibonacci_range(2:1:end), fibonacci_range(2:1:end), x_range, y_range, z_range);

    % Test 6: Special Exponents
    disp('Testing Special Exponents:');
    special_exponents_range = [42, 43, 44, 45];   % Modify the range as needed
    testBealConjecture(A_range, B_range, C_range, special_exponents_range, special_exponents_range, special_exponents_range);

    % Test 7: Specific Diophantine Equations
    disp('Testing Specific Diophantine Equations:');
    testBealConjecture(A_range, B_range, C_range, x_range, 2*x_range, 3*x_range);


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

