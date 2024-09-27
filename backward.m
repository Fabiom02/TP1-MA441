function[In] = backward(a)
    In = zeros(100,1);
    
    In(100) = 0;

    for k = 99:-1:1
    In(k) = (1/a)*((1/k+1)-In(k+1)); 
    end

end
