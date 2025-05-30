%% Surface and Image Visualization in MATLAB

%% Using surf() with meshgrid
% Create a surface using meshgrid and surf
x = -1:0.1:1;
y = -1:0.1:1;
[X, Y] = meshgrid(x, y);
Z = X.^2 + Y.^2;
surf(X, Y, Z);

%% Customizing Edge Color of Surface
% Interpolating edge color for smoother look
s = surf(X, Y, Z);
s.EdgeColor = "interp";

%% Understanding CData Property
% Surface coloring is based on Z by default
% You can customize CData for surface coloring (must match size of Z)

%% Adding Colorbar and Adjusting Colormap
colorbar;                     % Adds a colorbar to the figure
colormap(jet);                % Changes colormap to 'jet'
% clim is set automatically based on ZData by default
% You can customize with: caxis([minVal maxVal]);

%% Using pcolor()
% Creates a flat surface (ZData all 0) colored with CData = Z
% Cisualize your 3-D data as an pseudocolor image
pcolor(X, Y, Z);

%% Using imagesc()
% Display matrix Z as an indexed image with color representing data values
imagesc(Z);

%% Customizing axes in imagesc()
% Specify x and y axis range manually
imagesc([0 1], [-2 2], Z);


