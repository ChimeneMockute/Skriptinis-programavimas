% Chimene Mockute EEf-25/2
% 2026-10-13
% 6LD 2UZD 


global X Y


X = 2*pi : -0.1 : -2*pi;
Y = zeros(size(X)); 


pirmas();
antras();


figure;
plot(X, Y, '--y*');
title('y(x)');
xlabel('x');
ylabel('y');


whos global