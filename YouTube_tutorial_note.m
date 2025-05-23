%% MATLAB Tutorial

clear all % Removes all variables from the workspace
close all % Closes all figure windows, ex. old plots
clc % Clears the Command Window, makes the output look clean

% Basic Iterations
counter = 0;
for i = 1:5
    counter = counter + 1;
    disp(counter);
end %define where the loop ends

% Plotting
x = 0:0.1:5; % start at 0, increase by 0.1, end at 5
y_1 = x.*2;

plot(x,y_1,"r+") % plots x,y using red + signs
title("My First Plot")
xlabel("x-values")
ylabel("y-values")
grid on
hold % make sure new plots don't overwrite existing plots

y_2 = x.^2;
y_3 = x.^3;

plot(x,y_2,"g*") % plots x,y using green * signs
plot(x,y_3) % plots x,y in default setting
hold off
legend("Plot 1", "Plot 2", "Plot 3") % add legend

% Subplotting
x = 0:0.1:2*pi;

subplot(2,2,1) % Grid: 2 rows, 2 columns → position 1 (top-left)
plot(x, sin(x))
title('sin(x)')

subplot(2,2,2) % Position 2 (top-right)
plot(x, sin(2*x))
title('sin(2x)')

subplot(2,2,3) % Position 3 (bottom-left)
plot(x, sin(3*x))
title('sin(3x)')

subplot(2,2,4) % Position 4 (bottom-right)
plot(x, sin(4*x))
title('sin(4x)')

% Function:
function a = triangle_area(w, h)
    a = 0.5 * w * h;
end
