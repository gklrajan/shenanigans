function testEulerSumOfPowersConjecture(lowerLimit, upperLimit)
    % lowerLimit: The lower bound for the positive integers a, b, and c.
    % upperLimit: The upper bound for the positive integers a, b, and c.

    % using 64bit double for calculation, so use a limit beyond which we
    % can not compute
    maxN = 2^53;

    % Loop through all combinations of a, b, c.
    for a = lowerLimit:upperLimit
        for b = lowerLimit:upperLimit
            for c = lowerLimit:upperLimit
                % Set the upper limit for n as the smallest of a, b, c, and maxN.
                upperN = min([a, b, c]);

                % Loop through n from 3 to the upper limit.
                for n = 3:upperN

                   if a^n + b^n > maxN || c^n > maxN
                       disp('computation limit reached!');
                       return;

                    % Check if a^n + b^n = c^n
                   else if a^n + b^n == c^n
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
