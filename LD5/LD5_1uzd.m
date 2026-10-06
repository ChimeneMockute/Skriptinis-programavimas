% Chimene Mockute EEf-25/2
% 2026-10-06
% 5LD 1 uzd

%% 1.


C = {53, 'abcdef', true, [1, 2, 3, 4, 5]};

disp('Celiu masyvas:');
celldisp(C); 


C{5} = @(x) cellfun(@length, x);

ilgiai = C{5}(C(1:4));

disp('Celiu elementu ilgiai:');
disp(ilgiai);


%% 2. 

disp('f = a*x^2 + b*x + c');

while true
    disp('Iveskite kintamuosius:');
    a = input('a = ');
    b = input('b = ');
    c = input('c = ');
    x = input('x = ');


    f = a * x^2 + b * x + c;

    disp(['f= ', num2str(f)]);

 
    if a == 10 && b == 10 && c == 0 && x == 1
        disp('Ivesta a=10, b=10, c=0, x=1, todel ciklas nutraukiamas');
        break;
    else
        disp('Salyga netenkinama, ciklas kartojamas iš naujo');
    end
end