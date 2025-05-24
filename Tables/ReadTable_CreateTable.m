%-----------------------------------------------------------
% MATLAB Table Operations: readtable, table, array2table
%-----------------------------------------------------------

%% 1. Import Data from a File using readtable()
% Automatically detects header and assigns variable names
tableName = readtable("dataFile.txt");

% To ensure text is imported as strings instead of character arrays:
tableName = readtable("dataFile.txt", TextType="string");

% View summary of the imported table
summary(tableName);

%% 2. Create a Table from Workspace Variables
a = [1; 2; 3];
b = ["A"; "B"; "C"];
c = [true; false; true];

tbl = table(a, b, c);  % Creates a table from variables a, b, c

%% 3. Convert a Matrix to a Table
A = [1 2; 3 4; 5 6];

% Default conversion
tbl = array2table(A);

% With custom variable names
tbl = array2table(A, VariableNames=["X", "Y"]);

%% 4. Notes
% - Tables are useful for storing column-oriented data with heterogeneous types.
% - `readtable` is best for importing from CSVs, text files, and spreadsheets.
% - `table` is used to organize existing variables into a tabular format.
% - `array2table` is useful when converting numeric matrices into labeled data tables.

%% 5. Reference
% - readtable(): https://www.mathworks.com/help/matlab/ref/readtable.html
% - table(): https://www.mathworks.com/help/matlab/ref/table.html
% - array2table(): https://www.mathworks.com/help/matlab/ref/array2table.html
% - summary(): https://www.mathworks.com/help/matlab/ref/summary.html

