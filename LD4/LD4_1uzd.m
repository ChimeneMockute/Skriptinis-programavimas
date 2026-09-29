% Chimene Mockute EEf-25/2
% 2026-09-29

%1 trimatis grafiku vaizdavimas
% a) 
theta = linspace(0, 2*pi, 100); 
r = linspace(0, 1, 50);
[THETA, R] = meshgrid(theta, r);


X = R .* cos(THETA);
Y = R .* sin(THETA);

Z = 1 - 2*X.^2 - 3*Y.^2;

figure;
surf(X, Y, Z);


colormap parula;       
shading interp;       
view(45, 30);          


title('f(x,y) = 1 - 2x^2 - 3y^2');
xlabel('X');
ylabel('Y');
zlabel('Z');

% b) 
x = linspace(-2, 2, 100); 
y = linspace(-2, 2, 100); 
[X, Y] = meshgrid(x, y);

Z = sin(abs(X + Y) ./ 20) .* exp(-abs(X + Y));


figure;
surf(X, Y, Z);


colormap jet;          
shading interp;       
view(60, 30);         


title('f(x,y) = sin(|x+y|/20)*e^{-|x+y|}');
xlabel('X');
ylabel('Y');
zlabel('Z ');
