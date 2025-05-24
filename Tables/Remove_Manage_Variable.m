%% File: table_variable_management.m
% Summary: This script demonstrates how to manage table variables in MATLAB,
% including removing variables manually or based on name patterns.

% --- Remove a Single Variable from a Table ---
tblSmaller = removevars(tbl, "varname");

% --- Remove Multiple Variables by Name ---
tblSmaller = removevars(tbl, ["var1" "var2"]);

% --- Extract Variable Names from the Table ---
v = tbl.Properties.VariableNames;

% --- Remove Variables Starting with 'Home' or 'Away' Using Pattern Matching ---
idx = contains(v, ["Home" "Away"]);  % Logical index of vars to remove
tblSmaller = removevars(tbl, v(idx));

% --- Other Useful Functions for Matching Variable Names ---
% startsWith(v, "pattern")
% endsWith(v, "pattern")
% These functions return logical arrays for pattern-matching variable names.
