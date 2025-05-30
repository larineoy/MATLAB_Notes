%% Working with datetime in MATLAB

% Create a datetime from year, month, day
t1 = datetime(2005, 10, 21);

% Create a datetime from year, month, day, hour, minute, second
t2 = datetime(2005, 10, 21, 17, 10, 0);

% Create an array of datetimes using array inputs
t3 = datetime([2005 2008], [10 6], [21 23]); 
% Returns a 1x2 datetime array: Oct 21, 2005 and June 23, 2008

% Use scalar values for repeated inputs
t4 = datetime(2023, [10 6], [21 23]);
% Equivalent to: datetime([2023 2023], [10 6], [21 23])

% Access elements from a datetime array
thirdtime = t4(2);       % Access the second element
firstfour = t4(1:2);     % Access the first two elements

