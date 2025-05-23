%-----------------------------------------------------------
% Extracting Multiple Rows or Columns from a Matrix
%-----------------------------------------------------------

% Suppose we have a matrix "price" where rows are different days
% and columns are different products or locations
price = [10 15 20;
         11 16 21;
         12 17 22;
         13 18 23;
         14 19 24];

disp('Original matrix "price":');
disp(price);

%% Extract the first three rows (all columns)

% Method 1: Using a range
firstThree = price(1:3, :);
disp('First three rows using 1:3:');
disp(firstThree);

% Method 2: Using an explicit index vector
firstThreeAlt = price([1 2 3], :);
disp('First three rows using [1 2 3]:');
disp(firstThreeAlt);

%-----------------------------------------------------------
% MATLAB Statistical Functions: mean, min, max
%-----------------------------------------------------------

%% 1. Mean Across Rows
% Use mean(M, 2) to compute the mean across each row

M = [1 2 NaN;
     4 5 6;
     7 NaN 9];

rowMeans = mean(M, 2);  % Includes NaNs by default (NaN result if NaN present)
disp('Mean across rows (with NaNs):');
disp(rowMeans);

% Use "omitmissing" to ignore NaN values
rowMeansNoNaN = mean(M, 2, "omitmissing");
disp('Mean across rows (omit NaNs):');
disp(rowMeansNoNaN);

%% 2. Minimum/Maximum Across Columns
% min(M) and max(M) compute column-wise by default
% Missing values are automatically omitted

colMins = min(M);
colMaxs = max(M);
disp('Column-wise min values:');
disp(colMins);
disp('Column-wise max values:');
disp(colMaxs);

%% 3. Specify Dimension for min/max using 3rd Input
% Use [] to skip the second argument and specify dimension directly

A = [10 20 30;
     4  5  6;
     7  8  9];

% Minimum across rows (dim = 2)
rowMins = min(A, [], 2);  % Finds min in each row
disp('Row-wise min values:');
disp(rowMins);

% Maximum across rows
rowMaxs = max(A, [], 2);  % Finds max in each row
disp('Row-wise max values:');
disp(rowMaxs)

%-----------------------------------------------------------
% MATLAB Moving Statistics: movmean, movmax, etc.
%-----------------------------------------------------------

%% 1. Moving Average with Missing Data
% Use movmean(x, n, "omitmissing") to compute a moving average
% while ignoring NaN values in the window

x = [1 NaN 3 4 NaN 6 7];
n = 3;  % Window size

y_avg = movmean(x, n, "omitmissing");

disp('Original data with NaNs:');
disp(x);
disp('Moving average (omit missing):');
disp(y_avg);

%% 2. Other Moving Window Functions
% The same syntax applies for movmax, movmin, movstd, etc.

y_max = movmax(x, n, "omitmissing");
disp('Moving maximum (omit missing):');
disp(y_max);

% You can similarly use:
% - movmin(x, n, "omitmissing")
% - movstd(x, n, "omitmissing")
% - movvar(x, n, "omitmissing")
% etc.

%% 3. Notes
% - These functions help smooth or extract trends in time-series or sequential data.
% - "omitmissing" avoids NaNs propagating through the output unnecessarily.
% - Window size `n` defines how many adjacent values are considered at a time.

%% 4. Reference
% MathWorks movmean documentation:
% https://www.mathworks.com/help/matlab/ref/movmean.html
% Other related functions:
% https://www.mathworks.com/help/matlab/moving-window-calculations.html

