%
% Chimene Mockute EEf-25/2 2026-09-08
% Paprastas skriptas
%

x=1:32;
y=x.^2;

plot (x,y, 'o-r', x, y/3, 'xb')
title ('Dvi funkcijos')
xlabel ('X-ai')
ylabel ('F_1 [-o-]  |   F_2 [-x-]')

% 8 uzduotis:
% 1 budas - help sin; help plot; help title;
% 2 budas - doc sin; doc plot; doc title;
% 3 budas - paieskos laukelyje;

% 9 uzduotis:

% linspace

% 1) Naudojimo budai, sintakse:
% y = linspace(x1,x2)
% y = linspace(x1,x2,n)

% 2) Kiek ivesties ir isvesties argumentu konkreti funkcija gali tureti:
% 2 arba 3 ivesties argumentus, 1 isvesties argumenta

% 3) Kada funkcija gali tureti ivesties ir isvesties argumentu:
% y = linspace(x1,x2) - kai nenurodytas tasku skaicius, sugeneruojama 100 tasku
% y = linspace(x1,x2,n) - kai nurodomas norimas tasku skaicius

% 4) Kokių ivesties ir isvesties argumentu konkreti funkcija gali tureti:
% x1 - pradzios reiksme
% x2 - pabaigos reiksme
% n - generuojamu tasku skaicius
% y - vienmatis vektorius su tolygiai isdestytomis reiksmemis

% 5) Kokias funkcijas rekomenduoja pagalba kaip susijusias su nagrinejama:
% colon, logspace


% size

% 1) Naudojimo budai, sintakse:
% sz = size(A)
% m = size(A,dim)
% [m,n] = size(A)

% 2) Kiek ivesties ir isvesties argumentu konkreti funkcija gali tureti:
% 1 arba 2 ivesties argumentus, 1 arba 2 isvesties argumentus

% 3) Kada funkcija gali tureti ivesties ir isvesties argumentu:
% size(A) - kai norima gauti visus masyvo matmenis
% size(A,dim) - kai norima gauti konkretaus matmens dydi
% [m,n] = size(A) - kai norima atskirai gauti eiluciu ir stulpeliu skaiciu

% 4) Kokių ivesties ir isvesties argumentu konkreti funkcija gali tureti:
% A - tiriamas masyvas arba matrica
% dim - matmens numeris
% sz - masyvo matmenu dydziai
% m - eiluciu skaicius
% n - stulpeliu skaicius

% 5) Kokias funkcijas rekomenduoja pagalba kaip susijusias su nagrinejama:
% length, numel, ndims


% max

% 1) Naudojimo budai, sintakse:
% M = max(A)
% M = max(A,[],dim)
% [M,I] = max(A)
% [M,I] = max(A,[],dim)

% 2) Kiek ivesties ir isvesties argumentu konkreti funkcija gali tureti:
% 1 arba 3 ivesties argumentus, 1 arba 2 isvesties argumentus

% 3) Kada funkcija gali tureti ivesties ir isvesties argumentu:
% M = max(A) - kai reikia rasti didziausia masyvo arba matricos reiksme
% M = max(A,[],dim) - kai reikia rasti didziausias reiksmes pagal pasirinkta matmeni
% [M,I] = max(A) - kai reikia gauti didziausia reiksme ir jos indeksa
% [M,I] = max(A,[],dim) - kai reikia gauti didziausias reiksmes ir ju indeksus pagal pasirinkta matmeni

% 4) Kokių ivesties ir isvesties argumentu konkreti funkcija gali tureti:
% A - tiriamas masyvas arba matrica
% dim - matmens numeris
% M - didziausia reiksme
% I - didziausios reiksmes indeksas

% 5) Kokias funkcijas rekomenduoja pagalba kaip susijusias su nagrinejama:
% min, bounds, cummax, movmax
