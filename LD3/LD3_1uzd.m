% Chimene Mockute EEf-25/2
% 1. Dvimatis grafiku vaizdavimas
% a) 

x = 0:0.1:2*pi; 
y1 = x.^3 + tan(x); 

figure(1);
plot(x, y1, 'bo-'); %melyna o tipas
title('f(x) = x^3 + tan(x)');
xlabel('x');
ylabel('y');
%ribos 
axis([min(x) max(x) min(y1) max(y1)]); 
legend('f(x) = x^3 + tan(x)', 'Location', 'best'); 
grid on;

% b) c) 
y2_1 = exp(x);
y2_2 = exp(3*x);
y2_3 = exp(5*x);

figure(2);
plot(x, y2_1, 'r-', x, y2_2, 'g-', x, y2_3, 'm-'); %red, green, magenta
title('Eksponentines funkcijos');
xlabel('x');
ylabel('y');
%ribos
axis([min(x) max(x) min(y2_1) max(y2_3)]); 
legend('f(x) = e^x', 'f(x) = e^{3x}', 'f(x) = e^{5x}', 'Location', 'best');
grid on;
%% 

% 2. Specializuotu grafiku kūrimas
% a) 
pazymiai = [
    9, 7, 5, 6;
    5, 6, 8, 9;
    9, 4, 9, 8;
    7, 5, 6, 3;
    10, 8, 9, 2;
    6, 7, 5, 8
    ];

figure(3);
% a)vertikalus 
subplot(2,1,1);
bar(pazymiai, 'grouped');
title('a)');
xlabel('Studentas');
ylabel('Pažymys');
% asiu ribos
axis([0 7 0 10]); 
legend('1 egz', '2 egz', '3 egz', '4 egz', 'Location', 'northeastoutside'); 
grid on;

% b)  diskreciai 
subplot(2,1,2);
bar(pazymiai, 'stacked');
title('b)');
xlabel('Studentas');
ylabel('Pažymių suma');

axis([0 7 0 40]); 
grid on;