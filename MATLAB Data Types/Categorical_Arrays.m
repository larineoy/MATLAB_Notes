%% Categorical Arrays in MATLAB

% Convert a string array to a categorical array
stringArray = ["cat"; "dog"; "cat"; "bird"];
catArray = categorical(stringArray);
disp(catArray)
% Output:
%   cat
%   dog
%   cat
%   bird

% View category names and count of elements
players.Team = categorical(["Arsenal", "Crystal Palace", "Everton", "Liverpool", ...
                            "Manchester City", "Manchester United", ...
                            "Tottenham Hotspur", "Tottenham Hotspur", "Arsenal", "Arsenal"]);
summary(players.Team)
% Output (number of players per team):
%   Arsenal               3
%   Crystal Palace        1
%   Everton               1
%   Liverpool             1
%   Manchester City       1
%   Manchester United     1
%   Tottenham Hotspur     2

%% Merge multiple categories
x = categorical([2 1 2 3]);
y = mergecats(x, ["1" "3"], "C");
disp(y)
% Output:
%   C
%   2
%   C
%   2

%% Specify custom levels for numeric categories
v = [10 5 0 0];
levels = ["beg" "mid" "last"];
c1 = categorical(v, [0 5 10], levels);
disp(c1)
% Output:
%   last   mid   beg   beg

%% Create ordinal categorical array and compare
v = [10 5 0 0 0];
levels = ["beg" "mid" "last"];
c2 = categorical(v, [0 5 10], levels, 'Ordinal', true);
compResult = c2 > "mid";
disp(compResult)
% Output:
%   1   0   0   0   0


