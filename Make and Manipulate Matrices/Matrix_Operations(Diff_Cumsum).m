%-----------------------------------------------------------
% MATLAB Matrix Operations: diff, cumsum
%-----------------------------------------------------------

%% 1. Difference Between Elements - diff()
% Computes the difference between adjacent elements
v = [10, 12, 17, 25];
dv = diff(v);  % Result: [2 5 8]

% For a matrix, diff operates column-wise by default
M = [3 2 4 1;
     1 1 2 3;
     2 6 6 2];

diffM = diff(M);  % Output is one row shorter
disp('Column-wise difference:');
disp(diffM);

%% 2. Cumulative Sum - cumsum()
% Computes cumulative sum across each column
cumulativeSum = cumsum(M);
disp('Cumulative column-wise sum:');
disp(cumulativeSum);

%% 5. Notes
% - diff(): useful for detecting change or rate of change
% - cumsum(): gives cumulative total up to each element, column-wise by default
% - All functions can be directed to operate along rows using the dimension argument

%% 6. Reference
% - diff(): https://www.mathworks.com/help/matlab/ref/diff.html
% - cumsum(): https://www.mathworks.com/help/matlab/ref/cumsum.html
