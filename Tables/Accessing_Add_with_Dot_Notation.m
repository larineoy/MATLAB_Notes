%% Accessing and Using Table Variables with Dot Notation

% Access data stored in a table variable
% Syntax: newvar = tbl.VariableName
HomeWins = EPL.HomeWins;
AwayWins = EPL.AwayWins;

% Indexing into part of a variable using dot notation
% Get the first 10 values in VariableX from table tbl
first10X = tbl.VariableX(1:10);

%% Adding a New Variable to a Table

% You can add a new variable to a table using dot notation.
% Syntax: tbl.NewVarName = newData
% Example: Add a new column called TotalWins
TotalWins = HomeWins + AwayWins;
EPL.TotalWins = TotalWins;

