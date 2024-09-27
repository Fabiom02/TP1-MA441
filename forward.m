function[In] = forward(a)
    In = zeros(100,1);
    
    In(1) = log((a+1)/a);

    for k = 2:100
    In(k) = (1/k-1) -a*In(k-1); 
    end

end
