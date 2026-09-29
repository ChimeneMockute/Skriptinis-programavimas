%Chimene Mockute EEf-25/2
%papildoma uzduotis

[x, y] = meshgrid(-2:0.1:2, -2:0.1:2);

z = 1 - (x.^2 + y.^2);


figure('Name', 'Shading savybės', 'Position', [100, 100, 1200, 400]);

% 1. 
subplot(1, 3, 1);
surf(x, y, z);
shading faceted;
title('shading faceted');
xlabel('X'); ylabel('Y'); zlabel('Z');

%2.
subplot(1, 3, 2);
surf(x, y, z);
shading flat;
title('shading flat');
xlabel('X'); ylabel('Y'); zlabel('Z');
%3.
subplot(1, 3, 3);
surf(x, y, z);
shading interp;
title('shading interp');
xlabel('X'); ylabel('Y'); zlabel('Z');