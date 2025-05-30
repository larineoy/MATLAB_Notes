%% String Concatenation with Character Vectors
greet = 'Hello';
space = ' ';
whom = 'world';
txt = [greet space whom];  % Output: 'Hello world'

%% String Concatenation with String Arrays (preferred in recent MATLAB versions)
greet = "Hello";
space = " ";
whom = "world";
txt = greet + space + whom;  % Output: "Hello world"

%% Converting Numeric to Text
txt = num2str(3.14);  % Output: '3.14'

%% Indexing into Cell Array Contents
c = {42, 'text', rand(2)};
c2contents = c{2};  % Output: 'text'

