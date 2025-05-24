%% Using the 'which' Function in MATLAB

% The 'which' function helps determine which file or variable with a 
% given name has the highest priority in the current MATLAB context.

% Syntax:
which name

% Example:
which sum
% Output might be something like:
% built-in (/MATLAB/toolbox/matlab/elfun/@double/sum)  % Indicates built-in function


%% Listing All Items with the Same Name on the MATLAB Path

% If there are multiple functions or files with the same name stored in 
% different directories, you can use the '-all' flag to list all of them.

% Syntax:
which name -all

% Example:
which sum -all
% This lists all locations in the search path that have a file/function named 'sum'.

