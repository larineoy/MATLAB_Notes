%-----------------------------------------------------
% MATLAB Random Number Generation Functions Summary
%-----------------------------------------------------

%% 1. Uniform Distribution (0 to 1)
% rand(m,n) generates an m-by-n matrix of random numbers
% uniformly distributed between 0 and 1.

A = rand(3, 4);  % Example: 3x4 matrix with values in (0,1)
disp('Uniform random numbers (0 to 1):');
disp(A);


%% 2. Normal (Gaussian) Distribution
% randn(m,n) generates an m-by-n matrix of normally distributed 
% random numbers with mean = 0 and standard deviation = 1.

B = randn(2, 5);  % Example: 2x5 matrix with normal distribution
disp('Normal random numbers (mean 0, std 1):');
disp(B);

% Shift and scale randn to change mean and std:
M = 10;   % New mean
Sd = 2;   % New standard deviation
C = M + Sd * randn(1, 6);
disp('Normal random numbers (mean 10, std 2):');
disp(C);


%% 3. Random Integers
% randi(maxVal, m, n) creates an m-by-n matrix of uniformly 
% distributed random integers from 1 to maxVal.

D = randi(10, 3, 3);  % 3x3 matrix of integers from 1 to 10
disp('Random integers (1 to 10):');
disp(D);

% randi([minVal maxVal], m, n) allows you to specify the range
E = randi([5 15], 4, 2);  % 4x2 matrix of integers from 5 to 15
disp('Random integers (5 to 15):');
disp(E);


%% 4. Custom Uniform Range (not available directly in rand)
% To get random numbers between a and b using rand:
a = 2;
b = 7;
F = a + (b - a) * rand(1, 5);  % 5 random numbers from 2 to 7
disp('Uniform random numbers (2 to 7):');
disp(F);
