%-----------------------------------------------------------
% MATLAB Vector Indexing and Element Manipulation
%-----------------------------------------------------------

%% 1. Indexing with a Vector to Extract Multiple Elements
v = [3 4 5 7];

% Directly specifying indices
subset1 = v([1 3]);  % Extracts the 1st and 3rd elements
disp('Subset using direct indices [1 3]:');
disp(subset1);  % Output: [3 5]

% Using another variable as index
nums = [2 3];
subset2 = v(nums);  % Extracts the 2nd and 3rd elements
disp('Subset using variable nums = [2 3]:');
disp(subset2);  % Output: [4 5]


%% 2. Using the "end" Keyword for Indexing
v = [1 3 5 7 9];

lastElement = v(end);  % Gets the last element
disp('Last element using v(end):');
disp(lastElement);  % Output: 9

rangeFromEnd = v(end-3:end);  % Extracts last 4 elements
disp('Elements from v(end-3:end):');
disp(rangeFromEnd);  % Output: [3 5 7 9]


%% 3. Removing Elements from a Vector
v = [1 2 3 4 5];

v([2 4]) = [];  % Removes the 2nd and 4th elements
disp('Vector after removing elements at positions 2 and 4:');
disp(v);  % Output: [1 3 5]
