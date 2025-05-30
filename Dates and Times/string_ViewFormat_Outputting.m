%% Converting datetime to text using string()
t = datetime(2023, 10, 21);
s = string(t);
% Output: "21-Oct-2023 00:00:00" (default format)

%% Viewing the display format of a datetime variable
formatView = t.Format;
% Output: 'dd-MMM-uuuu HH:mm:ss' (default format)

%% Changing the display format
t.Format = "MMMM d, yyyy";
% Now when you display t, output is: "October 21, 2023"

%% Creating a string with specific format (without changing t.Format)
s2 = string(t, "MMMM d, yyyy");
% Output: "October 21, 2023"

%% Example with date and time
t2 = datetime(2023, 10, 21, 14, 30, 0); % 2:30 PM
s3 = string(t2, "dd/MM/yyyy HH:mm:ss");
% Output: "21/10/2023 14:30:00"

%% Full custom format
t3 = datetime("July 20, 1969, 20:17:40", InputFormat="MMMM dd, yyyy, HH:mm:ss");
s4 = string(t3, "dd MMM yyyy HH:mm:ss");
% Output: "20 Jul 1969 20:17:40"

%% Checking multiple datetime formats
t4 = datetime([2020, 2021, 2022], [12, 5, 9], [25, 15, 10]);
t4.Format = "MMM dd, yyyy";
s5 = string(t4);
% Output: ["Dec 25, 2020"    "May 15, 2021"    "Sep 10, 2022"]

%% Alternate formats:
% t.Format = "dd-MMM-yyyy";           % e.g., "25-Dec-2020"
% t.Format = "yyyy/MM/dd";            % e.g., "2020/12/25"
% t.Format = "eeee, MMM dd, yyyy";    % e.g., "Friday, Dec 25, 2020"


