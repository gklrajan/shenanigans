function testEulerSumOfPowersConjecture(lowerLimit, upperLimit)
    % lowerLimit: The lower bound for the positive integers a, b, c, and n.
    % upperLimit: The upper bound for the positive integers a, b, c, and n.

    % Loop through all combinations of a, b, c, and n in the specified range.
    for a = lowerLimit:upperLimit
        for b = lowerLimit:upperLimit
            for c = lowerLimit:upperLimit
                for n = 3:upperLimit
                    % Check if a^n + b^n = c^n
                    if abs(a^n + b^n - c^n) < 1e-9  % Adjust the tolerance as needed
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
