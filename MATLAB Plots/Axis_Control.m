%-----------------------------------------------------------
% MATLAB Axis Control and Tick Customization
%-----------------------------------------------------------

%% 1. Customizing X-Axis Ticks and Labels
% Use xticks to set tick positions, and xticklabels to assign labels

bar(1:12, randi([10 100], 1, 12));  % Example bar chart with 12 bars
xticks([1 12]);                     % Only show ticks at positions 1 and 12
xticklabels(["First Month", "Last Month"]);  % Custom labels for those ticks
title('Bar Chart with Custom X-Axis Labels');


%% 2. Get Axis Limits
% Use axis to return current [xmin xmax ymin ymax] values

v = axis;  % Returns a 1x4 vector
disp('Current axis limits:');
disp(v);   % Output example: [10 20 1 5]


%% 3. Set Axis Limits with xlim and ylim
% Use xlim and ylim to manually set x- and y-axis ranges

xlim([0 15]);   % Sets x-axis from 0 to 15
ylim([2 4]);    % Sets y-axis from 2 to 4


%% 4. Automatically Tighten Axes to Fit Data
% The axis tight command adjusts axes to fit the range of the data

axis tight;  % Automatically sets [xmin xmax ymin ymax] to match data

% NOTE:
% Changing the axis limits affects only the display,
% not the data stored in the variables or plot objects.

%% 5. Reference
% - xticks: https://www.mathworks.com/help/matlab/ref/xticks.html
% - xlim: https://www.mathworks.com/help/matlab/ref/xlim.html
% - axis: https://www.mathworks.com/help/matlab/ref/axis.html

%-----------------------------------------------------------
% MATLAB Dual Y-Axis Plotting with yyaxis
%-----------------------------------------------------------

%% 1. Plotting with Two Y-Axes (Left and Right)

% Create two data series with different y-ranges
x = 0:0.1:10;
y1 = sin(x);           % For left y-axis
y2 = exp(0.3 * x);     % For right y-axis

% Create a plot with separate y-axes on the left and right
figure;

yyaxis left;
plot(x, y1, 'b-', 'LineWidth', 2);
ylabel('Sin(x)');      % Label for left y-axis

yyaxis right;
plot(x, y2, 'r--', 'LineWidth', 2);
ylabel('Exp(0.3x)');   % Label for right y-axis

title('Dual Y-Axis Plot');
xlabel('x');
legend('sin(x)', 'exp(0.3x)');
