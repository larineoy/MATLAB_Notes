%% Analyzing Column Relationships in a Dataset Using plotmatrix and corrcoef

% Assume 'usage' is a matrix where each column represents electricity usage 
% in a different sector, including total usage in the last column.

%% 1. Visualizing Relationships with plotmatrix()

% Use plotmatrix to visualize all pairwise scatter plots between columns
% This creates a grid of scatter plots and histograms
plotmatrix(usage);

% Result: A scatter plot matrix showing how each sector's usage relates to every other


%% 2. Correlation Between Two Variables

% Example vectors
v1 = [1 2 3 4 5];
v2 = [2 4 6 8 10];

% Compute correlation coefficient
c = corrcoef(v1, v2);
% Result: 2x2 matrix. Off-diagonal elements are the correlation between v1 and v2.


%% 3. Handling Missing Data in corrcoef

% When data contains missing values (NaNs), default corrcoef returns NaNs
% Use the "Rows","complete" option to ignore rows with missing values

% Example:
A = [1 NaN 3; 4 5 6; 7 8 9];
B = [9 8 7; 6 5 4; 3 2 1];

% Compute correlation ignoring rows with missing values
c_complete = corrcoef(A, B, "Rows", "complete");
% Only rows without any NaNs are used (row 2 and 3 here)


%% 4. Correlation Matrix for All Columns in a Matrix

% You can also compute the correlation between all columns of a matrix
% Example: usage matrix with no NaNs
corr_matrix = corrcoef(usage, "Rows", "complete");

% Result: Square matrix where (i,j) gives correlation between column i and j
% Useful to find highly correlated sectors or detect redundancy


%% Summary

% plotmatrix(data)
% - Creates scatter plots between every pair of columns

% corrcoef(x, y)
% - Returns 2x2 matrix of correlation coefficients between two variables

% corrcoef(A, B, "Rows", "complete")
% - Computes correlation between A and B using only complete (non-NaN) rows

% corrcoef(M, "Rows", "complete")
% - Computes correlation matrix for all columns of matrix M

