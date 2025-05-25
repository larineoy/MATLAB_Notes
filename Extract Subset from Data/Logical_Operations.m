%% Logical Operations and Variables

% Relational Operators
% ==   Equal
% >    Greater than
% <    Less than
% >=   Greater than or equal
% <=   Less than or equal
% ~=   Not equal

% Example of relational operators
v = [6 7 8 9];
w = [2 4 8 16];

% Not equal operator
NE = v ~= w;
% NE = [1 1 0 1]

%% Logical Operators
% &   AND
% |   OR
% ~   NOT

% Example using logical operators
x = 5;

A = (v > x) & (w > x);
% A = [0 0 1 1]

