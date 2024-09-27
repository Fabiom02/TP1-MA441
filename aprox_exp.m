function [resultat] = aprox_exp(x)

resultat = zeros(100,1);
resultat(1) = 1;

for k = 2:100
    resultat(k) = resultat(k-1) + (x^k)/(factorial(k));
end
end
