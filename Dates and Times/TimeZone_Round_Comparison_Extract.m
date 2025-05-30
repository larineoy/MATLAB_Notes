%% Time zones
t14 = datetime(2005,10,21,17,10,0, TimeZone="UTC");
% t14 = 21-Oct-2005 17:10:00 +00:00
t14.TimeZone = "Europe/Madrid";
% Now t14 is adjusted to Madrid time

t15 = datetime("October 21, 2005", TimeZone="Asia/Singapore");

%% Rounding with dateshift
rounded = dateshift(t14, "start", "month", "previous");
% Rounds t14 to start of previous month

%% Datetime comparisons
d1 = datetime(2020,3,13);
d2 = datetime(2020,6,23);
isEarlier = d1 < d2;
% isEarlier = true

%% Logical indexing on table with datetime condition
% Assuming T is a table with a datetime column called 'Time'
% Tselect = T(T.Time > datetime(2020,1,1), :);

%% Extract datetime components
[y,m,d] = ymd(t14);
% y = 2005, m = 10, d = 21

[~,min,~,sec] = datevec(t14);
% min = 10, sec = 0

