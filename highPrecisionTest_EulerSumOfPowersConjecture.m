function testEulerSumOfPowersConjecture(lowerLimit, upperLimit)
    % lowerLimit: The lower bound for the positive integers a, b, and c.
    % upperLimit: The upper bound for the positive integers a, b, and c.

    % Loop through all combinations of a, b, c.
    for a = lowerLimit:upperLimit
        for b = lowerLimit:upperLimit
            for c = lowerLimit:upperLimit
                % Loop through n from 3 to the smallest of a, b, c, and 64.
                for n = 3:min([a, b, c, 64])
                    % Use vpa to perform arithmetic with higher precision
                    sum_powers = vpa(a)^n + vpa(b)^n;

                    % Check if a^n + b^n = c^n
                    if sum_powers == vpa(c)^n
                        % Report the counterexample if found
                        disp(['Counterexample found for Euler''s Sum of Powers Conjecture: a=', ...
                            num2str(a), ', b=', num2str(b), ', c=', num2str(c), ', n=', num2str(n)]);
                        return; % Terminate the testing once a counterexample is found
                    end
                end
            end
        end
    end

    % If the loop completes without finding a counterexample, print a success message.
    disp('Euler''s Sum of Powers Conjecture holds within the specified range.');
end
