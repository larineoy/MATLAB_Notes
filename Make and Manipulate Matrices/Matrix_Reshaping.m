%-----------------------------------------------------------
% Matrix Reshaping in MATLAB
%-----------------------------------------------------------

%% 1. Reshape a matrix to a new size using reshape(A, p, q)
% A must have the same number of elements as p*q
A = reshape(1:24, 4, 6);  % Example: 4x6 matrix
disp('Original matrix A (4x6):');
disp(A);

% Task: Reshape A into a matrix B with 8 rows and 3 columns
B = reshape(A, 8, 3);
disp('Reshaped matrix B (8x3):');
disp(B);

%% 2. Use [] to automatically calculate one dimension
% MATLAB will automatically determine the number of rows to preserve total elements
B_auto = reshape(A, [], 3);  % Same result as above
disp('Reshape using automatic dimension ([], 3):');
disp(B_auto);

%% 3. Reshape a matrix into a column vector using M(:)
columnVec = A(:);  % Converts matrix A into a single column vector
disp('Column vector from A using A(:):');
disp(columnVec);
