%% Logical Indexing – Extracting Values with a Logical Vector

% Example setup
x = [5; 3; 1; 7];
y = [7; 1; 4; 3];

% Logical indexing: x > 4
idx = x > 4;

% Extract values from y where condition is true
z = y(idx);
% or directly:
% z = y(x > 4)
% z = [7; 3]


%% Relational Operators with Matrices and Dimension-Specific Functions

% Create a matrix
mat = [-5 0 5; -1 2 3];

% Logical matrix for elements greater than 0
mPos = mat > 0;

% Check if all elements in each column are true
c = all(mPos);       % c = [0 0 1]

% Check if all elements in each row are true
r = all(mPos, 2);    % r = [0; 0]

% Use logical indexing to extract specific elements
% mat(2,c) gets the value in row 2 for columns where c is true
value = mat(2, c);   % value = 3


%% Logical Indexing – Assigning Values

% Setup
v = 1:5;
idx = v > 3;   % Logical index: [0 0 0 1 1]

% Assign a single value to all matching elements
v(idx) = 42;
% v = [1 2 3 42 42]

% Assign different values to matching elements
v(idx) = [33 99];
% v = [1 2 3 33 99]

% Matrix setup
M = [8 1; 3 5; 4 9];

% Logical rows and columns
rows = [true false true];  % rows 1 and 3
cols = [false true];       % column 2

% Assign different values to a submatrix
M(rows, cols) = [-11; -22];
% M = [8 -11; 3 5; 4 -22]

% Assign same value to multiple elements
M(rows, cols) = 42;
% M = [8 42; 3 5; 4 42]

