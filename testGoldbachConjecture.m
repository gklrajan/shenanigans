function testGoldbachConjecture(lowerLimit, upperLimit)
    % lowerLimit: The lower bound for the even numbers search.
    % upperLimit: The upper bound for the even numbers search.

    % Generate a list of prime numbers up to the specified upper limit.
    primesList = generatePrimes(upperLimit);

    % Loop through even numbers from the lower limit up to the specified upper limit.
    for num = lowerLimit:2:upperLimit
        % Check if the number can be expressed as the sum of two primes.
        found = false;
        for i = 1:length(primesList)
            if isprime(num - primesList(i))
                fprintf('%d = %d + %d\n', num, primesList(i), num - primesList(i));
                found = true;
                break;
            end
        end

        % If no valid representation is found, print an error message and terminate.
        if ~found
            disp(['Goldbach Conjecture is not valid for ' num2str(num)]);
            return;
        end

        % Print status at every 200th iteration.
        if mod(num, 200) == 0
            disp(['Testing number ' num2str(num)]);
        end
    end

    % If the loop completes without finding a counterexample, print a success message.
    disp('Goldbach Conjecture holds within the specified range.');
end

function primesList = generatePrimes(limit)
    % Generate a list of prime numbers up to the specified limit.

    primesList = [];

    % Loop through all numbers up to the limit.
    for num = 2:limit
        % Check if the number is prime.
        if isprime(num)
            primesList = [primesList, num];
        end
    end
end
