%% Detecting and Standardizing Missing Data in MATLAB

% --- ismissing ---
% By default, ismissing checks for NaN values in numeric arrays.
% You can also specify custom values to be treated as "missing".

% Example 1: Default behavior
data1 = [1, 2, NaN, 4, NaN];
missingMask1 = ismissing(data1);
% missingMask1 = [0 0 1 0 1]

% Example 2: Specifying custom values to be treated as missing
data2 = [10, -999, 25, 0, -999];
missingMask2 = ismissing(data2, [-999 0]);
% missingMask2 = [0 1 0 1 1]


% --- standardizeMissing ---
% Converts specified values in an array to NaN.

% Example:
rawData = [50, -1, 75, 999, -1];
mv = [-1, 999];  % Values to be treated as missing

dataStandardized = standardizeMissing(rawData, mv);
% dataStandardized = [50 NaN 75 NaN NaN]


% --- rmmissing ---
% Remove missing values.

% Example:
rawData = [2   NaN     5     3   NaN     4   NaN];
cleanX = rmmissing(rawData)
% cleanX =
     % 2     5     3     4

