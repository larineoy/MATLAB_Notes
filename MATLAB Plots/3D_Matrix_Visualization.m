%-----------------------------------------------------------
% MATLAB 3D Matrix Visualization: surf, mesh, and contour
%-----------------------------------------------------------

%% 1. Visualizing a Matrix as a Surface
% Each value in matrix M is treated as a height (z-value)
M = peaks(20);  % Example surface data

figure;
surf(M);  % Surface plot using row and column indices as x and y
title('Surface Plot: surf(M)');
xlabel('Column Index (x)');
ylabel('Row Index (y)');
zlabel('Height (z)');

%% 2. Providing x and y Vectors
% You can specify x (columns) and y (rows) independently
x = linspace(-3, 3, size(M, 2));  % n columns
y = linspace(-3, 3, size(M, 1));  % m rows

figure;
surf(x, y, M);  % Full 3D surface with labeled x, y axes
title('Surface Plot: surf(x, y, M)');
xlabel('x');
ylabel('y');
zlabel('M(x,y)');

%% 3. Mesh Surface Plot
% mesh() is similar to surf(), but shows a wireframe instead of a filled surface

figure;
mesh(x, y, M);
title('Mesh Plot: mesh(x, y, M)');
xlabel('x');
ylabel('y');
zlabel('M(x,y)');

%% 4. Contour Plot (2D Representation of 3D Data)
% contour() displays level curves of the matrix data
figure;
contour(x, y, M);
title('Contour Plot: contour(x, y, M)');
xlabel('x');
ylabel('y');

%% 5. Notes
% - All three functions: surf, mesh, and contour accept the same input format.
% - If x and y are not provided, MATLAB uses index values.
% - Z = M: matrix data where each value is interpreted as surface height.

%% 6. Reference Links
% - surf(): https://www.mathworks.com/help/matlab/ref/surf.html
% - mesh(): https://www.mathworks.com/help/matlab/ref/mesh.html
% - contour(): https://www.mathworks.com/help/matlab/ref/contour.html
