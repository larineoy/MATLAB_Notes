%% MATLAB Datetime Formatting Notes

% Create datetime from text input
t5 = datetime("October 21, 2005");

% Create datetime with locale
t6 = datetime("2005年10月21日", 'Locale', "ja_JP");

% Numeric format string
t7 = datetime("9/30/1999");

% Resolve ambiguous date format with InputFormat
t8 = datetime("10-11-2005", 'InputFormat', "MM-dd-yyyy");

% Format with full date and time
t9 = datetime("July 20, 1969, 20:17:40", 'InputFormat', "MMMM dd, yyyy, HH:mm:ss");

% Construct string array of consistent date pattern
y = [2005 2008 2023];
s = "October 21, " + y;
t10 = datetime(s);

% Special date strings: "now", "today", "yesterday", "tomorrow"
nowTime = datetime("now");
todayDate = datetime("today");
yesterdayDate = datetime("yesterday");
tomorrowDate = datetime("tomorrow");


