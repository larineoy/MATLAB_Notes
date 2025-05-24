%% Counting Elements in Logical Arrays

% Purpose                                     Function    Output Type
% ---------------------------------------------------------------------
% Are any of the elements true?              -> any       (true/false)
% Are all the elements true?                 -> all       (true/false)
% How many elements are true?                -> nnz       (double)
% How many elements are true per column/row? -> sum       (double)
% What are the indices of true elements?     -> find      (double)

% Example array
A = [true false true; false true false];

% Use of 'any': Are any elements in the matrix true?
result_any = any(A(:));  % true

% Use of 'all': Are all elements in the matrix true?
result_all = all(A(:));  % false

% Use of 'nnz': Number of nonzero (true) elements
count_true = nnz(A);     % 3

% Use of 'sum': Count of true elements per column
column_counts = sum(A);  % [1 1 1]

% Use of 'find': Indices of true elements (column-major order)
true_indices = find(A);  % [1; 3; 5]

