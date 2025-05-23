%-----------------------------------------------------------
% MATLAB Rounding with round()
%-----------------------------------------------------------

%% 1. Syntax
% round(M, n) rounds the values in array M to n decimal places.

M = [3.1416, 2.7183, 1.6180;
     0.5772, 1.4142, 2.2361];

% Round to 2 decimal places
y = round(M, 2);

disp('Original matrix:');
disp(M);

disp('Rounded to 2 decimal places:');
disp(y);

%% 2. Notes
% - M can be a vector, matrix, or multidimensional array.
% - n must be a scalar integer (positive for decimals, 0 for integers).
% - Example: round(M, 0) rounds to the nearest whole number.

%% 3. Reference
% MathWorks round documentation:
% https://www.mathworks.com/help/matlab/ref/round.html
