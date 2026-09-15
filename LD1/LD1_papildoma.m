%
% Chimene Mockute EEf-25/2
%
% Papildoma uzduotis

N = 9;

V = (N+1) : 0.5 : (N+4); % vektorius (pradine ir galine reiksmes kas 0,5

A = [N N+1 N+2;
    N+3 N+4 N+5;
    N+6 N+7 N+8]


% a) 
A_a = A(3, 2:3);

% b)
A_b = A(2:3, 1:2);

% c)
A_c = A([1, 3], [1, 3]);

%vektoriaus prijungimas
Vektrorius = [A, V(1:3)']; 
