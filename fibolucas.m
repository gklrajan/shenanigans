function [fibonacciNumbers, lucasNumbers] = generateFibonacciAndLucas(n)
    % Generate vectors of Fibonacci and Lucas numbers up to the nth term.

    fibonacciNumbers = zeros(1, n);
    lucasNumbers = zeros(1, n);

    % Seed values for Fibonacci and Lucas sequences
    fibonacciNumbers(1) = 0;
    fibonacciNumbers(2) = 1;

    lucasNumbers(1) = 2;
    lucasNumbers(2) = 1;

    % Generate Fibonacci and Lucas numbers up to the nth term
    for i = 3:n
        fibonacciNumbers(i) = fibonacciNumbers(i-1) + fibonacciNumbers(i-2);
        lucasNumbers(i) = lucasNumbers(i-1) + lucasNumbers(i-2);
    end
end
