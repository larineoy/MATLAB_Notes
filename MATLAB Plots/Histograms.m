%-----------------------------------------------------------
% MATLAB Histograms: Bin Control, Overlay, and Normalization
%-----------------------------------------------------------

%% 1. Basic Histogram with Custom Bin Width
% Customize histogram by specifying BinWidth

vec = randi([0 100], 1, 100);  % Sample data
figure;
histogram(vec, BinWidth=5);    % Bin width of 5
title('Histogram with BinWidth = 5');


%% 2. Set Number of Bins Instead of Width
% You can set the total number of bins as a second argument

figure;
histogram(vec, 10);            % 10 bins total
title('Histogram with 10 Bins');


%% 3. Overlaying Histograms with hold on/off
% To compare distributions (e.g., seaWS and landWS)

seaWS = randn(1, 1000) * 5 + 20;    % Simulated sea wind speeds
landWS = randn(1, 500) * 5 + 15;    % Simulated land wind speeds

figure;
histogram(seaWS, 20, 'FaceAlpha', 0.5);  % First histogram
hold on;
histogram(landWS, 20, 'FaceAlpha', 0.5); % Second histogram
hold off;
title('Overlayed Sea and Land Windspeed Histograms');
legend('Sea', 'Land');


%% 4. Normalizing Histograms
% Normalize using 'Normalization' name-value pair

figure;
histogram(seaWS, 20, Normalization="probability", FaceAlpha=0.5);
hold on;
histogram(landWS, 20, Normalization="probability", FaceAlpha=0.5);
hold off;
title('Normalized Probability Histograms');
legend('Sea (probability)', 'Land (probability)');

% Other Normalization methods include:
% - 'count' (default)
% - 'countdensity'
% - 'cumcount'
% - 'cdf'
% - 'pdf'

%% 5. Reference
% MathWorks histogram documentation:
% https://www.mathworks.com/help/matlab/ref/histogram.html
