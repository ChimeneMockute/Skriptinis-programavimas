function atsakymas = specfunkc(varargin)


if nargin == 1
    x = varargin{1};
   
    x_kubu = x^3; 
  
    atsakymas = x^2; 

elseif nargin == 2
    x = varargin{1};
    y = varargin{2};
 
    x_kvadratu = x^2;
    y_kubu = y^3;

    atsakymas = x_kvadratu * y_kubu; 

else
    error('Funkcijai turi būti paduodamas 1 arba 2 kintamieji.');
end
end