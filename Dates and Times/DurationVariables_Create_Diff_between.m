%% Duration Variables in MATLAB

% Create a duration using hours, minutes, and seconds
d = duration(2, 30, 45);  % 2 hours, 30 minutes, 45 seconds
% Output: d = 2.5167 hours

% You can also use arithmetic with duration variables
dm = minutes(4);          % 4 minutes
ds = seconds(33);         % 33 seconds
d_sum = dm + ds;          % Adds both durations
% Output: d_sum = 4.55 minutes

%% Calendar Duration Variables

% Create calendar durations using years, months, days
cald = calendarDuration(1, 6, 10);  % 1 year, 6 months, 10 days
% Output: cald = 1y 6mo 10d

% You can use predefined functions like calweeks, caldays, calmonths, etc.
nweeks = calweeks(3);     % 3 calendar weeks
% Output: nweeks = 3w

% Arithmetic with calendar durations
twoyears = calyears(1) + calmonths(12);  % Adds up to 2 calendar years
% Output: twoyears = 2y

% Create calendar duration arrays
fibyrs = calyears([1 2 3 5 8 13]);
% Output: fibyrs = [1y 2y 3y 5y 8y 13y]

% Combine durations
totalTime = hours(1) + minutes(15) + seconds(20);
% Output: totalTime = 1.2556 hours

% Convert duration to numeric (in hours, minutes, etc.)
h = hours(totalTime);  % Output: h = 1.2556
m = minutes(totalTime);  % Output: m = 75.3333
s = seconds(totalTime);  % Output: s = 4520

% Convert between duration and numeric manually
d2 = duration(3.75, 0, 0);  % 3.75 hours
% Output: d2 = 3.75 hours

% Combine duration and datetime
t = datetime(2024,5,25,12,0,0);  % May 25, 2024 at 12:00:00
t_plus = t + minutes(90);
% Output: t_plus = 13:30:00 on May 25, 2024

%% Difference between datetime variables gives duration
t1 = datetime(2024,5,25,12,0,0);
t2 = datetime(2024,5,25,14,30,0);
dt = t2 - t1;
% Output: dt = 2.5 hours

% Combine calendar and datetime
dob = datetime(2005,10,21);
age = calyears(2025 - year(dob));
% Output: age = 20y

% Convert calendar duration to number of days approximately
daysApprox = days(age);
% Output: daysApprox ≈ 7305 days

% Combine datetime with calendar duration
nextBirthday = dob + calyears(20);
% Output: nextBirthday = October 21, 2025

%% Using the between() Function to Calculate Calendar Durations

% Define two datetime variables
time1 = datetime(2000, 1, 1);
time2 = datetime(2025, 5, 25);

% Compute calendar duration between time1 and time2
dtcal = between(time1, time2);

% Output:
% dtcal = 25y 4mo 24d (25 years, 4 months, and 24 days between Jan 1, 2000 and May 25, 2025)

