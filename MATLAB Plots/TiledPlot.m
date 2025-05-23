%-----------------------------------------------------------
% MATLAB Tiled Plot Layout with tiledlayout and nexttile
%-----------------------------------------------------------

%% 1. Basic Syntax
% Use tiledlayout(m, n) to create an m-by-n grid of plots
% Use nexttile to move to the next subplot area

x = linspace(0, 2*pi, 100);
y1 = sin(x);
y2 = cos(x);
y3 = exp(-0.3*x);
y4 = log(x + 1);

% Create a 2x2 tiled layout
tiledlayout(2, 2);

% First plot
nexttile;
plot(x, y1, 'r');
title('sin(x)');

% Second plot
nexttile;
plot(x, y2, 'b');
title('cos(x)');

% Third plot
nexttile;
plot(x, y3, 'g');
title('exp(-0.3x)');

% Fourth plot
nexttile;
plot(x, y4, 'm');
title('log(x + 1)');

%% 2. Notes
% - Use tiledlayout instead of subplot for more control over layout and spacing.
% - nexttile replaces subplot(n,m,k) style for sequential plot positioning.
% - Customize spacing with padding and tile spacing options:
%   tiledlayout(2,2, 'Padding', 'compact', 'TileSpacing', 'compact')

%% 3. Reference
% MathWorks tiledlayout documentation:
% https://www.mathworks.com/help/matlab/ref/tiledlayout.html
