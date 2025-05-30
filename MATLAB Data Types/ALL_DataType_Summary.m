%% Logical
% Stores true and false values
a = 5;
b = 3;
isGreater = a > b;         % true
% Useful in logical branching and filtering data

%% Dictionary
% Stores key-value pairs
d = dictionary(["A", "B", "C"], [1, 2, 3]);
val = d("B");              % val = 2

%% Table
% Stores tabular data with different types in columns
Name = ["Alice"; "Bob"];
Age = [25; 30];
Height = [5.5; 6.0];
T = table(Name, Age, Height);
% Access: T.Age(1) → 25

%% Timetable
% Stores tabular data with time stamps
time = datetime(2023,1,1) + days(0:1);
temp = [72.1; 68.3];
TT = timetable(time', temp);
% Useful in time-based data analysis

%% Cells and Structures
% Store heterogeneous data

% Cell array: uses numeric indexing
C = {42, 'hello', [1 2 3]};
x = C{2};                  % x = 'hello'

% Structure: uses named indexing
S.name = 'Larine';
S.age = 17;
val = S.age;               % val = 17

%% Datetime, Duration, and CalendarDuration
% datetime: moments in time
dt = datetime(2024,5,25,15,0,0); 

% duration: time intervals
d = duration(1,30,0);      % 1 hour 30 mins

% calendarDuration: months/years
cd = calmonths(3) + caldays(15);  

% Arithmetic with datetime
dt2 = dt + d;              % Adds duration
% dt2 = 25-May-2024 16:30:00

% Handle time zones
dt.TimeZone = 'America/New_York';

% Calculating elapsed time
startTime = datetime(2024,1,1);
endTime = datetime(2025,1,1);
elapsed = between(startTime, endTime);
% elapsed = 1y (calendar duration)

