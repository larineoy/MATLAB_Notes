%% Joining Two Tables by Key Variables
% Combine data from two tables using shared key variables

newTable = join(table1, table2);

% This matches rows using variables that share the same name in both tables.

%% Example Context
% Suppose 'table1' contains team performance data including 'Points'
% and 'table2' contains team payroll data with 'Payroll_M___'.
% After joining, 'newTable' will include both 'Points' and 'Payroll_M___'.

%% Plotting Data from a Table
% You can create a scatter plot using table variables as inputs.

scatter(EPL.Payroll_M___, EPL.Points);
xlabel("Payroll (Millions)");
ylabel("Points");
title("Team Performance vs. Spending");

