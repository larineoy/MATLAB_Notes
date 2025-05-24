%% Indexing and Extracting Subsets from Tables

% 1. Create a subset of the original table using numeric indexing
% Extract rows 1 to 4, column 1
winningTeams = EPL(1:4, 1);

% 2. Extract rows in a specific order
% Extract the 1st, 3rd, and 2nd rows of matrix M, keeping all columns
subsetM = M([1 3 2], :);

% 3. Index into a table using variable names instead of numeric indices
% Extract the 'HomeWins' column from the table
hmWins = EPL(:, "HomeWins");

% 4. Combine numeric and named indexing
% Extract even-numbered rows 2 to 8, and columns 'Team' and 'HomeWins'
fhw = EPL(2:2:8, ["Team", "HomeWins"]);

