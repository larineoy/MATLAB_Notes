%% Smoothing Noisy Data Using smoothdata() in MATLAB

% Sample noisy data
x = 1:20;
A = [5 6 5 6 100 7 8 7 9 10 9 10 8 7 50 6 7 8 9 10];

%% 🔹 How movmean Works

% movmean computes the average within a sliding window.
% Example with a small vector:
B = [1 2 3 100 5 6 7];
movmean_B = movmean(B, 3);  % 3-point centered window

% Output explanation:
% Index 1: mean([1 2])        = 1.5      (only first two values)
% Index 2: mean([1 2 3])      = 2.0
% Index 3: mean([2 3 100])    = 35.0
% Index 4: mean([3 100 5])    = 36.0
% Index 5: mean([100 5 6])    = 37.0
% Index 6: mean([5 6 7])      = 6.0
% Index 7: mean([6 7])        = 6.5      (only last two values)

% Result:
% movmean_B = [1.5 2.0 35.0 36.0 37.0 6.0 6.5]


%% 🔹 Common Methods for smoothdata()

% 1. Moving Average: "movmean"
z_movmean = smoothdata(A, "movmean");

% 2. Moving Median: "movmedian"
z_movmedian = smoothdata(A, "movmedian");

% 3. Gaussian-weighted Moving Average: "gaussian"
z_gaussian = smoothdata(A, "gaussian");

% 4. Linear Regression Smoothing: "lowess"
z_lowess = smoothdata(A, "lowess");

% 5. Quadratic Regression Smoothing: "loess"
z_loess = smoothdata(A, "loess");

% 6. Robust Linear Regression: "rlowess"
z_rlowess = smoothdata(A, "rlowess");

% 7. Robust Quadratic Regression: "rloess"
z_rloess = smoothdata(A, "rloess");

% 8. Savitzky-Golay Filter: "sgolay"
z_sgolay = smoothdata(A, "sgolay");

% 9. Non-Centered Window Example
% Apply moving average using a non-centered window: 3 past, 1 future point
z_customWin = smoothdata(A, "movmean", [3 1]);


%% Summary of Methods

% "movmean"   - Moving average (good for trends)
% "movmedian" - Moving median (handles outliers)
% "gaussian"  - Gaussian-weighted average
% "lowess"    - Linear regression (less discontinuity)
% "loess"     - Quadratic regression
% "rlowess"   - Robust linear regression (handles outliers better)
% "rloess"    - Robust quadratic regression
% "sgolay"    - Savitzky-Golay (good for fast-varying signals)

%% 🔹 Plotting All Examples for Comparison

figure;
plot(x, A, 'k--o', 'DisplayName', 'Original Data'); hold on;
plot(x, z_movmean, 'b', 'DisplayName', 'movmean');
plot(x, z_movmedian, 'r', 'DisplayName', 'movmedian');
plot(x, z_gaussian, 'g', 'DisplayName', 'gaussian');
plot(x, z_lowess, 'c', 'DisplayName', 'lowess');
plot(x, z_loess, 'm', 'DisplayName', 'loess');
plot(x, z_rlowess, 'y', 'DisplayName', 'rlowess');
plot(x, z_rloess, 'k', 'DisplayName', 'rloess');
plot(x, z_sgolay, 'b--', 'DisplayName', 'sgolay');
legend;
title('Comparison of Smoothing Methods');
xlabel('x');
ylabel('Smoothed Output');
grid on;

