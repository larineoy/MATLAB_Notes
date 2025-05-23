%-----------------------------------------------------------
% MATLAB Matrix Plotting with plot(), bar(), stem(), etc.
%-----------------------------------------------------------

%% 1. Plotting a Matrix
% If you pass a matrix M to plot(), it will create one line per column.
% Each column is treated as a separate y-variable, and rows are the x-axis indices.

M = rand(10, 3);  % 10 rows, 3 columns
figure;
plot(M);
title('Matrix Plot: Each Column Plotted Separately');
xlabel('Row Index');
ylabel('Values');
legend('Col 1', 'Col 2', 'Col 3');

% Equivalent for bar and stem:
% bar(M); or stem(M);


%% 2. Plotting Against a Vector
% If you pass a vector v and a matrix M as plot(v, M), MATLAB determines
% how to match based on the size of v:
% - If length(v) matches rows of M => each column plotted against v
% - If length(v) matches columns of M => each row plotted against v

v = 1:10;  % x-values
figure;
plot(v, M);  % Each column of M plotted against vector v
title('Columns of M Plotted Against v');
xlabel('v');
ylabel('M values');
legend('Col 1', 'Col 2', 'Col 3');

%% 3. Notes
% - No need to provide x-values if just plotting columns of a matrix.
% - Vector length must match one dimension of the matrix.
% - This applies to plot(), bar(), stem(), and similar functions.

%% 4. Reference
% MathWorks plot() documentation:
% https://www.mathworks.com/help/matlab/ref/plot.html
