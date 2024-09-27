function [resultat] = pi_formule (precision)

N = sqrt(1/precision);

resultat = zeros(100,1);
A = zeros(100,1);
B = zeros(100,1);

A(1) = N;
B(1) = 4;

for n=1:100
    A(n+1) = (A(n)+B(n))/2;
    B(n+1) = sqrt(A(n)*B(n));
    resultat(n) = 2*(log(N)*A(n))/N;
end
end