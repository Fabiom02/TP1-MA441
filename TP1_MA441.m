%% 1. Calcul de pi par la méthode de Archimede
% Question 1
%Calcul de y(20) et y(100)

p = zeros(100,1);

for i = 1:100
    p(i) = pi;
end

y = pi_archimede(100);

figure(1)
hold on
plot(y)
plot(p)
legend("Valeur de pi par le mhéthode d'Archimedes", "Valeur vrai de pi");

% On peut voir que il y a un erreur dans la formule, puis y(100) est 0
%
% Question 2
% Amélhorer le resultat en utilisant l'identité

y = pi_archimede_amelhoree(100);

figure(2)
hold on
plot(y)
plot(p)
legend("Valeur de pi par le mhéthode d'Archimedes avec identité", "Valeur vrai de pi");

% Maintenant, il n'y a le erreur dans y(100)
%
% Question 3

precision = 10^-5;

resultat = pi_formule(precision);

figure(3)
hold on
plot(resultat)
plot(p)
plot(y)
legend("Méthode plus rapid de pi", "Valeur vrai de pi", "Méthode d'Archimedes avec identité ");

% La formule de pi est plus rapide avec une precision de 10^-5

%%

% 1.2 Calcul de e^x par série de puissances
% Question 1

x=-20;

e = zeros(100,1);

for i = 1:100
    e(i) = exp(x);
end

resultat = aprox_exp(x);

figure(4)
hold on
plot(resultat)
plot(e)
legend("Aproximation exp", "exp reel");

% Pour x<0, on a une erreur parce que la soustration ...

% Question 2

resultatf = exp_app(x);

figure(5)
hold on
plot(resultatf)
plot(e)
legend("Aproximation exp", "exp reel");

%%

% 1.3 Schéma "forward" et "backward"
a = 0.5;

In = forward(a);

figure(6)
hold on
plot(In)
legend("Schema forward");

% Question 2

Inb = backward(a);

figure(7)
hold on
plot(Inb)
legend("Schema backward");

%%
% Question 3

a = 1;

if a>1
    In = backward(a);
else
    In = forward(a);
end

figure(8)
hold on
plot(In)




