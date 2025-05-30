%% 3D Plotting, Grid Generation, Interpolation, and Custom Scatter Plots in MATLAB

%% 1. Using plot3() – Create 3D Line Plots

% Define x, y, and z vectors
x = linspace(-2, 2, 100);
y = x.^2;
z = x.^3;

% Create a 3D line plot
plot3(x, y, z);
grid on;  % Turn on the 3D grid

% This plots the curve defined by (x, y, z) in 3D space


%% 2. Using meshgrid() – Generate Grid for 3D Data or Surface Plots

% meshgrid creates matrices for X and Y coordinates from vectors

x = 1:5;
y = 2:2:8;

[X, Y] = meshgrid(x, y);

% X will contain repeated rows of x
% Y will contain repeated columns of y

% Example output:
% X = [1 2 3 4 5;
%      1 2 3 4 5;
%      1 2 3 4 5;
%      1 2 3 4 5];
%
% Y = [2 2 2 2 2;
%      4 4 4 4 4;
%      6 6 6 6 6;
%      8 8 8 8 8];


%% 3. Using griddata() – Interpolate Scattered Data

% Suppose we have scattered data points:
xOrig = rand(1, 10)*10;
yOrig = rand(1, 10)*10;
zOrig = sin(xOrig) + cos(yOrig);

% Define interpolation locations:
[xNew, yNew] = meshgrid(0:1:10, 0:1:10);

% Interpolate z values on the grid
zInterp = griddata(xOrig, yOrig, zOrig, xNew, yNew);

% Result: zInterp contains interpolated values at each (xNew, yNew) point


%% 4. Using scatter() – Outlined Marker Scatter Plot

% Basic scatter plot with outlined markers
x = rand(1, 50);
y = rand(1, 50);
scatter(x, y, [], 'k');  % Outline only (no fill)


%% 5. Using scatter() – Filled Marker with Color Mapping

% Example with colored data and filled markers
lonNew = rand(1, 50)*100;
latNew = rand(1, 50)*50;
Tnew = rand(1, 50)*30;

% Plot filled scatter plot where color represents temperature (Tnew)
scatter(lonNew, latNew, [], Tnew, 'filled');

% This shows spatial data (lat/lon) with a colormap based on Tnew

%% Summary

% plot3(x, y, z)              – 3D line plot
% meshgrid(x, y)              – Generate grid matrices for 2D/3D plotting
% griddata(x, y, z, xq, yq)   – Interpolate scattered data to a grid
% scatter(x, y, [], 'k')      – Outlined scatter plot
% scatter(x, y, [], val, 'filled') – Color-mapped filled scatter plot

