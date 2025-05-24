%% User-Defined Functions with Multiple Outputs

% You can write functions that return more than one output.
% Syntax:
% function [out1, out2] = myFun(in1, in2, ...)

% Example function definition (in a separate file named myFun.m):
% function [sumVal, diffVal] = myFun(a, b)
%     sumVal = a + b;
%     diffVal = a - b;
% end

% Example usage:
[a, b] = myFun(10, 3);
% a = 13, b = 7

%% Ignoring Unused Outputs with Tilde (~)

% Use the tilde to skip outputs you don't need.
% For example, if you only need the second output:

[~, out2] = myFun(10, 3);
% Only out2 = 7 is stored; the first output is ignored.

