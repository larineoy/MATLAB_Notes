%% Removing Trends in Data Using detrend() in MATLAB

% The detrend function removes trends from data by subtracting a polynomial 
% of a specified order. This is useful for preprocessing time-series data.

%% 1. Remove a Polynomial Trend of Degree n

% Example: Remove a linear trend (n = 1)
x = 0:0.1:10;
y = 3*x + 5 + sin(x);  % Linear trend + sine wave

% Remove linear trend
y_detrended_linear = detrend(y, 1);

% Plot the original and detrended signal
figure;
subplot(2,1,1);
plot(x, y, 'b', 'DisplayName', 'Original');
title('Original Data with Linear Trend');
legend;

subplot(2,1,2);
plot(x, y_detrended_linear, 'r', 'DisplayName', 'Detrended (n=1)');
title('After Removing Linear Trend');
legend;

%% 2. Remove a Piecewise Polynomial Trend (Breakpoint Method)

% Example: Simulated data with two different linear trends
x2 = 1:100;
y2 = [0.5*x2(1:50) + randn(1,50), -0.2*x2(51:100) + 50 + randn(1,50)];

% Breakpoints define where the trend should be segmented
breakpoints = [50];  % One segment ends at index 50

% Remove piecewise trend using breakpoints
y2_detrended = detrend(y2, 1, breakpoints);

% Plot original and detrended
figure;
subplot(2,1,1);
plot(x2, y2, 'b', 'DisplayName', 'Original');
title('Original Data with Piecewise Trend');
legend;

subplot(2,1,2);
plot(x2, y2_detrended, 'r', 'DisplayName', 'Detrended (Piecewise)');
title('After Removing Piecewise Trend');
legend;

%% Summary

% detrend(A, n)         - Removes a polynomial trend of degree n from A
% detrend(A, n, bp)     - Removes piecewise polynomial trends with breakpoints bp

