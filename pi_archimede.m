function[y] = pi_archimede(k)

y = zeros(100,1);
y(1) = 2;

for i=1 : k
    y(i+1) = 2^i*sqrt(2*(1-(sqrt(1-(2^(-i)*y(i))^2))));
end

y(20)
y(100)

end