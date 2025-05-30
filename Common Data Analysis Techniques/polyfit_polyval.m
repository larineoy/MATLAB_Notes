%% Fitting and Evaluating Polynomials Using polyfit() and polyval() in MATLAB

%% 1. Basic Polynomial Fitting with polyfit()

% polyfit fits a least-squares polynomial of degree n to the data

% Example:
x = [1 2 3 4 5];
y = [2.2 2.8 3.6 4.5 5.1];

% Fit a linear polynomial (degree 1)
c = polyfit(x, y, 1);

% Result: c is a vector [m, b] such that y ≈ m*x + b
% You can use this to predict or model trends


%% 2. Evaluating the Polynomial at New Points with polyval()

% Use polyval to compute the value of the fitted polynomial at desired points

xFit = linspace(1, 5, 100);  % Fine range for smooth curve
yFit = polyval(c, xFit);

% Result: yFit contains estimated y values using the fitted polynomial


%% 3. Improving Numerical Precision with Centering and Scaling

% When x values are large or unevenly spaced, numerical issues may arise
% Use polyfit with a third output to obtain scaling parameters

% Example:
x2 = 1000 + (1:10);
y2 = 2*x2 + 5 + randn(1, 10);  % Linear with noise

% Fit a degree-1 polynomial with scaling
[c2, ~, sc] = polyfit(x2, y2, 1);

% sc contains mean and standard deviation of x2 used to center/scale it


%% 4. Evaluating Scaled Polynomial Using polyval()

% When using scaling, pass the scaling vector to polyval for accurate evaluation

x2Fit = linspace(1001, 1010, 100);
y2Fit = polyval(c2, x2Fit, [], sc);

% This ensures correct evaluation of the fitted polynomial on scaled x


%% Summary of Syntax

% Basic polynomial fitting:
%   c = polyfit(x, y, n)

% Evaluate polynomial at new points:
%   yFit = polyval(c, xFit)

% Fit with centering/scaling for precision:
%   [c, ~, sc] = polyfit(x, y, deg)

% Evaluate using scaling information:
%   yFit = polyval(c, xFit, [], sc)

