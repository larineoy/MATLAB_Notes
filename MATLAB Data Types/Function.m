%% Root of a Function Using fzero
% Find x where f(x) = 0
f = @(x) x.^2 - 4;        % Define function
xStart = 1;               % Starting guess
xRoot = fzero(f, xStart);
% xRoot = 2 (or -2 depending on xStart)

%% Using cellfun on Cell Arrays
% Create a cell array of vectors
cellArray = {[1 2 3], [-4 -2 0 1], [7 -8 9]};
% Apply max(abs(...)) to each cell
result = cellfun(@(x) max(abs(x)), cellArray);
% result = [3 4 9]

%% Anonymous Functions with multiple inputs
f = @(x, a, b) sin(a*x + b);
val = f(pi, 2, 0);  % Evaluate f at pi, a=2, b=0
% val = sin(2*pi) = 0

