%-----------------------------------------------------------
% MATLAB Scatter Plots and Colormaps
%-----------------------------------------------------------

%% 1. Basic Scatter Plot
% scatter(x, y, sz, col) 
% - x, y: coordinates
% - sz: marker size
% - col: marker color

x = rand(1, 20);                  % 20 random x-values
y = rand(1, 20);                  % 20 random y-values
sz = 100;                         % Size of markers
col = [0.2 0.5 0.8];              % RGB triplet (blue-ish)

figure;
scatter(x, y, sz, col);          % Basic scatter plot
title('Basic Scatter Plot');

%% 2. Filled Markers
% Add "filled" as a fifth input to fill the markers

figure;
scatter(x, y, sz, col, "filled");
title('Filled Marker Scatter Plot');

%% 3. Transparency with MarkerFaceAlpha
% Improve visibility when points overlap

figure;
scatter(x, y, sz, col, "filled", 'MarkerFaceAlpha', 0.5);  % 50% transparent
title('Scatter with Marker Transparency');

%% 4. Colormap Visualization with Color Data
% Use a colormap and assign color based on a data variable

c = linspace(1, 10, 20);          % Color data
figure;
scatter(x, y, sz, c, "filled");   % Colormap-based coloring
colorbar;                         % Show color scale legend
title('Scatter Plot with Colormap');

%% 5. Change Colormap
% Use built-in MATLAB colormaps like "jet", "parula", "hot", etc.

colormap('jet');                 % Change to 'jet' colormap
title('Scatter Plot with Jet Colormap');

%% 6. Reference
% Official documentation:
% - scatter: https://www.mathworks.com/help/matlab/ref/scatter.html
% - colormap: https://www.mathworks.com/help/matlab/ref/colormap.html
% - colorbar: https://www.mathworks.com/help/matlab/ref/colorbar.html
