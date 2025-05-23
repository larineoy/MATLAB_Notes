%-----------------------------------------------------------
% MATLAB Bar Charts with Custom Colors
%-----------------------------------------------------------

%% 1. Basic Bar Chart
% Syntax: bar(x, y) — similar to plot() and scatter()

x = [1 2 3 4];          % Categories or x-values
y = [10 20 15 30];      % Heights of bars

figure;
bar(x, y);              % Basic vertical bar chart
title('Basic Bar Chart');


%% 2. Bar Chart with Individual Bar Colors
% To color bars individually:
% - Set 'FaceColor' to 'flat'
% - Set 'CData' to a matrix of RGB triplets

colMatrix = [0 0 1;     % Blue (1st bar)
             1 0 0;     % Red  (2nd bar)
             1 0 0;     % Red  (3rd bar)
             1 0 0];    % Red  (4th bar)

figure;
bar(x, y, FaceColor="flat", CData=colMatrix);
title('Custom Colored Bar Chart');

%% 3. Notes
% - 'FaceColor' must be set to "flat" to apply individual RGB colors.
% - CData should be an m-by-3 matrix where m = number of bars.
% - Link: https://www.mathworks.com/help/matlab/ref/bar.html
