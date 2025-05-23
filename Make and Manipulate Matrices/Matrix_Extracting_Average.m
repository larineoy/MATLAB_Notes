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
% Calculating Column Averages with mean()
%-----------------------------------------------------------

% The mean function calculates the average of each column in a matrix.
% Syntax:
%   yearlyAverage = mean(revenue)

% Example:
% Suppose we have a matrix where each column represents a different year,
% and each row is a monthly revenue value.

revenue = [1200 1500 1300;
           1400 1600 1250;
           1100 1550 1350;
           1000 1450 1400];  % 4 months of revenue for 3 years

% Compute average revenue per year
yearlyAverage = mean(revenue);

disp('Revenue matrix:');
disp(revenue);

disp('Average revenue per year (mean of each column):');
disp(yearlyAverage);

% Output:
%   yearlyAverage = [1175 1525 1325]
