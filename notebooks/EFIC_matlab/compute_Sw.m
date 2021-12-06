function [Sw] = compute_Sw(r, lam, theta)
    f = r*2^(-lam);
    a = 0.495;
    k = 0.466;
    f0 = 0.401;
    g = [1.501, 1, 1, 0.534];
    A_mat = [0.62171, 0.67234, 0.72709, 0.67234;0.34537, 0.41317, 0.49428, 0.41317;0.18004, 0.22727, 0.28688, 0.22727; 0.091401, 0.11792, 0.15214, 0.11792; 0.045943, 0.059758, 0.077727, 0.059758; 0.023013, 0.030018, 0.039156, 0.030018];
    
    Y = exp(log(a) + k*(log(f) - log(f0*g(theta+1)))^2);
    if lam<=6
        A = A_mat(lam,theta+1);
    else
        A = A_mat(6,theta+1)/(2^(lam-6)); % for higher levels, the amplitude decreases by a factor of 2.
    end

    Sw = A/Y;

end

