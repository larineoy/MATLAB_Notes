%% Datetime Conversion Notes in MATLAB

% Convert numeric values to datetime using serial date formats

% Example 1: Convert Julian date number to datetime
t1 = datetime(2457388, ConvertFrom="juliandate");  % Standard Julian date
% Julian date 2457388 corresponds to August 12, 2015

% Example 2: Convert UNIX time (seconds since Jan 1, 1970)
t2 = datetime(1609459200, ConvertFrom="posixtime");  % Jan 1, 2021 00:00:00

% Example 3: Convert Excel date number (days since Jan 0, 1900)
t3 = datetime(44197, ConvertFrom="excel");  % Jan 1, 2021

% Example 4: Convert MATLAB serial date number (days since Jan 0, 0000)
t4 = datetime(737791, ConvertFrom="datenum");  % Jan 1, 2021

% Example 5: Julian day example from screenshot (Julian day 1234567)
t5 = datetime(1234567, ConvertFrom="juliandate");
% Corresponds to January 11, 1333 BCE

% Example 6: Convert a datetime to a numeric serial format (e.g. posixtime)
n1 = convertTo(t2, "posixtime");  % Returns 1609459200

% Example 7: Convert datetime to Excel serial format
n2 = convertTo(t3, "excel");

% Example 8: Convert using custom epoch time
% Epoch is set to Jan 1, 2000. Value 'n' is number of seconds from that date.
n = 86400 * 2; % 2 days after Jan 1, 2000
t6 = datetime(n, ConvertFrom="epochtime", Epoch="2000-01-01");

% Notes:
% - 'juliandate': Days since 4713 BCE, used by astronomers
% - 'posixtime': Seconds since Jan 1, 1970, used in Unix
% - 'datenum': MATLAB serial date number (Jan 0, 0000)
% - 'excel': Excel date format (Jan 0, 1900)
% - 'epochtime': Custom reference point; must specify Epoch

% By default, BCE/CE system:
% 1 = 1 CE
% 0 = 1 BCE
% -1 = 2 BCE, etc.

