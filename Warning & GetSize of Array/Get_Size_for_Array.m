%% size Function – Get Dimensions of an Array

% Example matrix or array named 'Year'
% You can get both dimensions at once:
[yRow, yCol] = size(Year);

% Or access a particular dimension:
yRow = size(Year, 1);  % Number of rows
yCol = size(Year, 2);  % Number of columns


%% numel Function – Count Total Elements in an Array

% Get the total number of elements in 'Year'
nTot = numel(Year);  % e.g., returns 19


%% length Function – Get Length of Vector

% Example vector
v = 1:3;

% Get length of vector
len = length(v);  % Returns 3

