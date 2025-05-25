%% Data Normalization in MATLAB using normalize()

% Sample matrix
x = [1 2 3; 4 5 6; 7 8 9];

%% 1. Normalize columns using z-scores (default method)
% This standardizes each column: subtracts mean and divides by std dev
xNorm_z = normalize(x);
% Each column will have mean ≈ 0 and std ≈ 1

%% 2. Center the mean of each column to zero
xNorm_center = normalize(x, "center", "mean");
% Shifts data so that the mean of each column is 0

%% 3. Scale each column by its first element
xNorm_scale = normalize(x, "scale", "first");
% Divides each value in a column by the column’s first entry

%% 4. Scale each column to a specific range [a, b]
a = 0;
b = 1;
xNorm_range = normalize(x, "range", [a b]);
% Scales data in each column to the interval [0, 1]

