%% Access Table Metadata
% Access metadata such as variable names and units
props = tableName.Properties;
variableNames = props.VariableNames;
% Or directly
variableNames = tableName.Properties.VariableNames;

%% Pattern Matching on Text
% Text can be stored as cell array of character vectors or string arrays
% Use functions like contains, startsWith, endsWith

% Example:
contains(textarray, "Hello world");

% These return logical arrays of same size as input.

%% Extract Data from Multiple Table Variables
% Use curly braces to extract multiple variables into an array
M = tbl{rows, vars};

%% Replace Text Patterns
% Replace specific text in a string or text array
newtxt = replace(oldtxt, ...
    "text to replace", "replacement text");

%% Assigning Data to Multiple Variables
% Extract and assign values from multiple table columns
vars = ["Var1" "Var2"];
tbl{:, vars} = matrixOfData;

% You can also assign new variables to a table
tbl.NewVariable = data;

% Assigning multiple new variables at once
newvars = ["NewVar1" "NewVar2"];
tbl{:, newvars} = matrixOfData;

