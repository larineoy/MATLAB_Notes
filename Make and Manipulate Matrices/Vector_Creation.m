%-----------------------------------------------
% Vector Creation: Colon Operator vs. linspace()
%-----------------------------------------------

% Syntax 1: x = a:dx:b
% - Creates a vector from a to b with spacing dx
% - For a specific spacing between elements

a = 0;         % Start value
dx = 0.5;      % Step size
b = 5;         % End value
x1 = a:dx:b;   % Example vector
disp('x1 using a:dx:b');
disp(x1);

% Syntax 2: x = linspace(a, b, n)
% - Creates a vector from a to b with n evenly spaced elements
% - For specific number of elements

n = 11;        % Number of points
x2 = linspace(a, b, n);  % Example vector
disp('x2 using linspace(a, b, n)');
disp(x2);
