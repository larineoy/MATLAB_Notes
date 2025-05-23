%-----------------------------------------------------------
% MATLAB Plotting Syntax and Customization
%-----------------------------------------------------------

%% 1. Basic Plotting Syntax
% The syntax for most plotting functions is similar to 'plot'.
% To visualize y-values against x-values:

x = 0:0.1:2*pi;
y = sin(x);
plot(x, y);  % Basic line plot

%% 2. Area Plot
% Use area(x, y) to visualize the area under the curve

figure;
area(x, y);  % Area under sine curve
title('Area Under Curve');

%% 3. Customizing Plots Using Name-Value Arguments
% You can customize plots using name-value pairs *after* all other inputs.
% Order doesn't matter, but they must come after x, y, and LineSpec (if used).

figure;
plot(x, y, 'LineWidth', 2, 'LineStyle', '--', 'Marker', 'o');
title('Customized Line Plot');

%% 4. Setting Line Color Using RGB Triplets
% RGB values must be set using the 'Color' name-value argument (not in LineSpec)

r = 0.2; g = 0.6; b = 0.8;  % RGB components
figure;
plot(x, y, 'LineWidth', 2, 'Color', [r g b]);  % Custom color
title('Plot with Custom RGB Color');

%% 5. Notes
% - LineSpec (like '--o') is optional.
% - RGB triplets cannot be used directly in LineSpec.
% - Full syntax:
%   plot(x, y, LineSpec, Name1=Value1, Name2=Value2, ...)

%% IMPOTANT Reference!!!!!
% Official MathWorks plot documentation:
% https://www.mathworks.com/help/matlab/ref/plot.html
