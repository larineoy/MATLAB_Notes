% Rename table variable
tbl = renamevars(tbl, "CurrentName", "NewName");

% Convert variable type
tbl = convertvars(tbl, "VarName", "datatype");

% Convert all numeric variables to double
tbl = convertvars(tbl, @isnumeric, "double");

% Convert individual variable manually
tbl.textvar = string(tbl.textvar);

% Convert variable to datetime with format
tbl.datevar = datetime(tbl.datevar, InputFormat="dd-MM-yyyy", Locale="en_GB");

% Move variable to end
tbl = movevars(tbl, "VarName");

% Move variable before another variable
tbl = movevars(tbl, "VarName", Before="OtherVarName");

