%% Filling Missing Data Using fillmissing in MATLAB

% Syntax:
% z = fillmissing(y, "method")                     % Equal spacing assumed
% z = fillmissing(y, "method", "SamplePoints", x)  % Specify observation locations

% Sample data with missing values (NaN)
y = [1 NaN 3 NaN 5];
x = [10 20 30 40 50];  % Sample points for interpolation

%% Methods for fillmissing

% 1. "next" – fill with the next nonmissing value
z_next = fillmissing(y, "next");

% 2. "previous" – fill with the previous nonmissing value
z_prev = fillmissing(y, "previous");

% 3. "nearest" – fill with the closest nonmissing value (next or previous)
z_nearest = fillmissing(y, "nearest");

% 4. "linear" – fill using linear interpolation (default for numeric)
z_linear = fillmissing(y, "linear");

% 5. "spline" – smooth cubic spline interpolation
z_spline = fillmissing(y, "spline");

% 6. "pchip" – cubic Hermite interpolation preserving monotonicity
z_pchip = fillmissing(y, "pchip");

% 7. Interpolation using specified sample points
z_customPoints = fillmissing(y, "linear", "SamplePoints", x);


%% Summary of Methods
% "next"     - Uses next nonmissing value
% "previous" - Uses previous nonmissing value
% "nearest"  - Uses nearest (next or previous) nonmissing value
% "linear"   - Averages previous and next values
% "spline"   - Smooth spline interpolation (can oscillate)
% "pchip"    - Smooth but preserves shape (avoids oscillation)

