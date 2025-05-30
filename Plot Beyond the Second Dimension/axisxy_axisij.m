%% Axis Direction Control
% You can control the y-axis direction using axis commands.

% Default direction (bottom to top):
axis xy;

% Reversed direction (top to bottom):
axis ij;

% Example to visualize axis direction
figure;
Z = magic(5); % Sample matrix

subplot(1,2,1);
imagesc(Z);
axis xy;
title('axis xy (default)');

subplot(1,2,2);
imagesc(Z);
axis ij;
title('axis ij (reversed)');

% Note:
% - In 'axis xy', y-values increase from bottom to top.
% - In 'axis ij', y-values increase from top to bottom.

