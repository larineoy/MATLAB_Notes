%% Table Join Operations in MATLAB

% Create sample tables for joining
Tleft = table([1; 3; 3; 5], ["A"; "B"; "C"; "D"], 'VariableNames', {'Key1','Var1'});
Tright = table([1; 3; 5; 7; 9], ["V"; "W"; "X"; "Y"; "Z"], 'VariableNames', {'Key1','Var2'});

%% 1. join
% Requirement: Key1 in Tright must have unique values and contain all keys in Tleft.
Tjoin = join(Tleft, Tright);  % default join on common variable 'Key1'

% Output:
% Key1 | Var1 | Var2
%   1  | "A"  | "V"
%   3  | "B"  | "W"
%   3  | "C"  | "W"
%   5  | "D"  | "X"

%% 2. innerjoin
% Keeps only matching keys between both tables.
Tinner = innerjoin(Tleft, Tright);

% Output:
% Key1 | Var1 | Var2
%   3  | "B"  | "W"
%   3  | "C"  | "W"
%   5  | "D"  | "X"

%% 3. outerjoin (default, no MergeKeys)
Tleft2 = table([1; 3; 3; 5], ["A"; "B"; "C"; "D"], 'VariableNames', {'Key1','Var1'});
Tright2 = table([3; 5; 5; 7], ["W"; "X"; "Y"; "Z"], 'VariableNames', {'Key1','Var2'});

Tout = outerjoin(Tleft2, Tright2);  % Creates Key1_TLeft and Key1_TRight

% Output:
% Key1_TLeft | Var1 | Key1_TRight | Var2
%     1      | "A"  |    NaN      | -
%     3      | "B"  |     3       | "W"
%     3      | "C"  |     3       | "W"
%     5      | "D"  |     5       | "X"
%     5      | "D"  |     5       | "Y"
%    NaN     | "-"  |     7       | "Z"

%% 4. outerjoin with MergeKeys enabled
ToutMerged = outerjoin(Tleft2, Tright2, 'MergeKeys', true);

% Output:
% Key1 | Var1   | Var2
%   1  | "A"    | <missing>
%   3  | "B"    | "W"
%   3  | "C"    | "W"
%   5  | "D"    | "X"
%   5  | "D"    | "Y"
%   7  | <missing> | "Z"

