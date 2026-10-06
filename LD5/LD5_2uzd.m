% Chimene Mockute EEf-25/2
% 2026-10-06
% 5LD 2 uzd
masyvas1 = [];
masyvas2 = [];


while true
   
    sk1 = round(rand * 5);
    sk2 = round(rand * 7);

    masyvas1 = [masyvas1, sk1];
    masyvas2 = [masyvas2, sk2];

    if sk1 == sk2
        disp(['Skaicius lygus ', num2str(sk1)]);
        break; 
    end
end

figure;
plot(masyvas1, '-o', 'LineWidth', 1.5, 'DisplayName', 'round(rand*5)');
hold on;
plot(masyvas2, '-x', 'LineWidth', 1.5, 'DisplayName', 'round(rand*7)');
hold off;


title('Skaiciu kitimas');
xlabel('Numeris');
ylabel('Sugeneruota reiksme');
legend('show');
grid on;