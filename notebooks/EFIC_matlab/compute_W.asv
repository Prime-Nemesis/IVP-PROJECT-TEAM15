function [W] = compute_W(N, B, r, v, fix_point)

Sw = [0.3842, 0.2700, 0.1316, 0.2700; 0.3818, 0.3326, 0.2138, 0.3326; 0.2931, 0.3019, 0.2442, 0.3019; 0.1804, 0.2129, 0.2098, 0.2129; 0.0905, 0.1207, 0.1430, 0.1207;0.0372, 0.0558, 0.0791, 0.0558];
W = zeros([N,N]);
Theta = mod(B,4);
Lam = log2(B - Theta)-1;
for i = 1:N
    for j = 1:N

        % getting the subband level (λ,Θ)
        theta = Theta(i,j);
        lam = Lam(i,j);

        d = 2^lam*(norm([i,j] - fov_point(lam, theta, N, fix_point)));
        Sv = Sw(lam, theta+1)*(compute_Sf(v, r, lam, d, N)^2.5);
        %%pv = (1/(sqrt(2*pi*0.4)))*exp(-(log(v)-1.2586)/(2*0.4^2));
        %%wv = pv*Sv;
        k = 5;
        W(i,j) = k*Sv;
    end
end


end

