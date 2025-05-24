%% Sorting Tables in MATLAB

% You can sort a table by a specific variable using the sortrows function:
tblSort = sortrows(tbl, "VarName");

% To sort in descending order:
tblSort = sortrows(tbl, ...
    "VarName", "descend");

% To sort by two or more variables, specify the variable names in order as a string array:
tblSort = sortrows(tbl, ...
    ["VarName1", "VarName2"], "descend");

