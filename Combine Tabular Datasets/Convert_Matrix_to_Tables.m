%% Converting Arrays to Tables

% Example: Convert a numeric matrix into a table with named variables

% Step 1: Create a matrix
mat = [10 20; 30 40; 50 60];

% Step 2: Convert the matrix to a table and assign variable (column) names
T = array2table(mat, ...
    "VariableNames", ["Score1" "Score2"]);

% Resulting table T:
%     Score1    Score2
%     ------    ------
%       10        20
%       30        40
%       50        60

% You can now access columns with dot-notation:
average = mean(T.Score1);  % Computes the mean of the 'Score1' column

