%-----------------------------------------------------------
% Matrix Concatenation in MATLAB
%-----------------------------------------------------------

%% 1. Horizontal Concatenation (Side-by-side)
% Combine matrices with the same number of rows using a space.
% Syntax: Z = [X Y]

X = [1 2; 3 4];       % 2x2 matrix
Y = [5 6; 7 8];       % 2x2 matrix
Z_horizontal = [X Y]; % Result is 2x4 matrix
disp('Horizontal Concatenation:');
disp(Z_horizontal);

% Output:
%     1     2     5     6
%     3     4     7     8


%% 2. Vertical Concatenation (Stacked)
% Combine matrices with the same number of columns using a semicolon.
% Syntax: Z = [X; Y]

X = [1 2; 3 4];       % 2x2 matrix
Y = [9 10; 11 12];    % 2x2 matrix
Z_vertical = [X; Y];  % Result is 4x2 matrix
disp('Vertical Concatenation:');
disp(Z_vertical);

% Output:
%     1     2
%     3     4
%     9    10
%    11    12
