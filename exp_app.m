function[resultatf] = exp_app(x)

resultatf = zeros(100,1);
resultatf(1) = 1;
resultat = zeros(100,1);
resultat(1) = 1;

for k = 2:100
    resultat(k) = resultat(k-1) + (abs(x)^k)/(factorial(k));
    if x<0
        resultatf(k) = 1/resultat(k);
    else
        resultatf(k) = resultat(k);
    end
end
end
