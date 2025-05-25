%% Logicals and Different Data Types

% Logical comparisons work with many other types of data

% 1. Compare elements of a string array to a single string
g = ["duck" "duck" "goose"] ~= "goose";
% g = [1 1 0]

% 2. Compare a string array to another string array (elementwise comparison)
gdg = ["duck" "duck" "goose"] == ["goose" "duck" "goose"];
% gdg = [0 1 1]

% 3. Logical indexing with string arrays
ddg = ["duck" "duck" "goose"];
result = ddg([false true true]);
% result = ["duck" "goose"]

