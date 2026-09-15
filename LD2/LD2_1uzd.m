%
% Chimene Mockute EEf-25/2 
% 2026-09-15
% 2LD 1 KLAUSIMAS

% 1 uzd
% Vienmaciai masyvai

V= 5 : 2 : 34 ; 
E= exp (V);

% V vekt : E vekt
C = V ./ E; % dalinimas su tasku, nes tai elementai o ne paprasta dalyba 

ATS = C'

%% 

% dvimaciai masyvai
clear; 


A = [pi/2 3*i;
    log10(2) 2*pi];

B = [exp(A(1,1)), exp(A(1,2))]; %vektorius

b = [A; B]; %prijungtas vektorius

Eil_Sum = sum(b, 2)

%%
% praktinis veiksmu su masyvais taikymas

clear;

A = 7;
f = 9;
sigma = 1.2;
U1 = 4.5;
U2 = 2.5;

t = 0 : 0.002 : 1;
s = A*cos(2*pi*f*t);
n = sigma*randn(size(t));


%a) 
%signalas plius triuksmas 
 
S1 = s+n;

%virsija u1:

atrinktas = S1 (S1 >U1);

% b) filtravimas
% kopija: 

filtr =  S1; 
filtr(abs(filtr) < U2) = 0; %jei maziau uz u2 tai nulis

% c) nefiltruoto signalo dydis

dydis_nefiltruotu = length(S1)

% d) a dalies atrinktu reikšmiu dydis
dydis_atrinktu = length(atrinktas)

% e) min ir max
max_r = max(filtr)
min_r = min(filtr)
