% Chimene Mockute EEf-25/2
% 2026-10-13
% 6LD 2UZD 1funkcija
function pirmas()
global X Y

indeksai = (X ~= 0);
Y(indeksai) = sin(X(indeksai)) ./ X(indeksai);
end