%% Working with Duration Arrays in MATLAB

% Duration arrays in MATLAB represent elapsed time using hour-minute-second format.

% Example duration array:
tDur = hours(0:744:6552);  % Create a duration vector spaced by 744 hours

% Display a few values
tDur(1:5)
% Output:
%    00:00:00
%   744:00:00
%  1488:00:00
%  2232:00:00
%  2976:00:00
% Units are in hours by default


%% Convert Duration to Numeric Days

% Use the days function to convert to number of days
numDays = days(tDur);

% Example: 744 hours = 31 days
% numDays(2) = 744 / 24 = 31


%% Convert Duration to Numeric Hours

% Use the hours function to extract the value as a numeric array of hours
numHours = hours(tDur);

% numHours = [0 744 1488 ...]  (numeric values in hours)


%% Other Unit Conversion Options

% You can also use:
%   minutes(tDur)  – Converts duration to minutes
%   seconds(tDur)  – Converts duration to seconds
%   years(tDur)    – Converts duration to fractional years (365.25 days per year)


%% Summary

% durationVector = hours(array)       % Creates a duration array from numeric hours
% numericDays    = days(duration)     % Converts to number of days
% numericHours   = hours(duration)    % Converts to number of hours
% numericMinutes = minutes(duration)  % Converts to number of minutes
% numericSeconds = seconds(duration)  % Converts to number of seconds

