%% Concatenating Tables in MATLAB

% Vertically concatenate multiple tables (like stacking rows)
newTable = [tbl1; tbl2; tbl3];

% Horizontally concatenate tables (must have aligned rows)
newTable = [table1 table2];


%% Adding Columns to Tables Using Dot-Notation

% You can add a new column to a table using dot-notation
% Example: Add newColumnData to an existing table
table.newColumnName = newColumnData;

% After converting 'results' to a table, you can combine it with 'season'
season = [season results];


