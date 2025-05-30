%% Surface Visualization in MATLAB using surf(), EdgeColor, and CData

%% 1. Creating a Surface Plot using surf()

% Define x and y ranges
x = -1:0.1:1;
y = -1:0.1:1;

% Create XY grid using meshgrid
[X, Y] = meshgrid(x, y);

% Define Z values based on X and Y
Z = X.^2 + Y.^2;

% Create surface plot
surf(X, Y, Z);

% This creates a smooth 3D paraboloid surface
% Default coloring is based on values in Z
% Grid increases monotonically in rows and columns due to meshgrid


%% 2. Adjusting the Edge Color of the Surface

% Use the EdgeColor property to control the color of mesh lines

s = surf(X, Y, Z);          % Store surface handle to modify it
s.EdgeColor = "interp";     % Interpolates edge colors from vertex colors

% Alternatives:
% s.EdgeColor = 'none';     % No mesh lines
% s.EdgeColor = 'flat';     % Uniform color between vertices


%% 3. Surface Coloring with CData Property

% By default, MATLAB uses Z for surface color (stored in CData)

% Example: Manually specify CData to use a custom color map
C = sin(X .* Y);        % Must be same size as Z
s = surf(X, Y, Z, C);   % Fourth argument sets CData manually

% The surface now uses C instead of Z for color interpolation


%% Summary of Syntax and Options

% [X, Y] = meshgrid(x, y)      – Creates XY grid for surface plotting
% Z = f(X, Y)                  – Function surface defined over the grid
% surf(X, Y, Z)                – Creates colored surface plot
% surf(X, Y, Z, C)             – Uses C for coloring instead of Z
% s.EdgeColor = "interp"      – Smooth interpolation of mesh lines
% s.CData = C                  – Set custom coloring data manually

% Note:
% - Z and C must be the same size
% - You can use colormap() to apply custom color schemes


