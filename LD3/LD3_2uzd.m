% Chimene Mockute EEf-25/2
% 3LD papildoma

% duomenys 

clear;

A = 7;           
f = 9;           
sigma = 1.2;     
U1 = 4.5;        
U2 = 2.5;        
t = 0 : 0.002 : 1; 

s = A * cos(2*pi*f*t);
n = sigma * randn(size(t));

%pradinis signalas 
S1 = s + n;
pradinis_signalas = S1; 

% filtravimas 
filtr = S1;
filtr(abs(filtr) < U2) = 0;
filtruotas_signalas = filtr; 

%
%grafinis atvaizdavimas 
%

figure('Name', 'Signalai', 'Color', 'w');

% a)
subplot(2, 1, 1); 
hold on;

plot(t, pradinis_signalas, 'b-.', 'DisplayName', 'Pradinis signalas');
plot(t, filtruotas_signalas, 'y-', 'DisplayName', 'Filtruotas signalas');

yline(U1, 'g-', 'LineWidth', 1.5, 'DisplayName', 'Riba U_1 = 4.5V');
yline(U2, 'r--', 'DisplayName', 'Riba U_2 = 2.5V'); 
yline(-U2, 'r--', 'HandleVisibility', 'off'); 

hold off;
grid on; 
legend('Location', 'best'); 
title('a) Pradinis ir filtruotas signalai', 'FontSize', 14);

xlabel('Laikas t (s)', 'Color', 'b', 'FontSize', 12);
ylabel('Įtampa (V)', 'Color', 'b', 'FontSize', 12);
axis([0 1 min(pradinis_signalas)-1 max(pradinis_signalas)+1]);

% b) 
subplot(2, 1, 2); 
hold on;

indeksai_virs_U1 = pradinis_signalas > U1;
t_virs_U1 = t(indeksai_virs_U1);
atrinktas = pradinis_signalas(indeksai_virs_U1);

stem(t_virs_U1, atrinktas, 'b', 'filled', 'DisplayName', 'Reikšmės > U_1');

max_r = max(filtruotas_signalas);
min_r = min(filtruotas_signalas);

[~, max_idx] = max(filtruotas_signalas);
[~, min_idx] = min(filtruotas_signalas);

plot(t(min_idx), min_r, 'v', 'MarkerFaceColor', [0.5 0 0.5], ...
'MarkerEdgeColor', [0.5 0 0.5], 'MarkerSize', 8, 'DisplayName', ...
'Minimali (filtr.)');

plot(t(max_idx), max_r, '^', 'MarkerFaceColor', 'r', 'MarkerEdgeColor', ...
'r', 'MarkerSize', 8, 'DisplayName', 'Maksimali (filtr.)');

yline(U1, 'g-', 'LineWidth', 1.5, 'DisplayName', 'Riba U_1 = 4.5V');

hold off;
grid on; 
legend('Location', 'best'); 
title('b) Signalo reikšmės viršijančios U_1 ir ekstremumai', 'FontSize', 14);

xlabel('Laikas t (s)', 'Color', 'b', 'FontSize', 12);
ylabel('Įtampa (V)', 'Color', 'b', 'FontSize', 12);
axis([0 1 min(pradinis_signalas)-1 max(pradinis_signalas)+1]);