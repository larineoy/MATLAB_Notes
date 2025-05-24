%% Accessing Data from Multiple Variables at Once (Using Curly Braces)

% Use curly braces {} to extract raw data from tables into regular arrays.

% You can specify variable names (as strings) or indices inside the braces.
% This extracts the first 3 rows from the 2nd and 7th variables:
winsTop3 = EPL{1:3, [2 7]};

% Equivalent extraction using variable names:
winsTop3 = EPL{1:3, ["HomeWins" "AwayWins"]};

% This results in a numeric matrix containing HomeWins and AwayWins
% values for the first 3 teams in the EPL table.

