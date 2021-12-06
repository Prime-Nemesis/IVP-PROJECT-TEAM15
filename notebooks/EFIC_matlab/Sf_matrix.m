function [Sfs] = Sf_matrix(Theta, Lam, N, fix_point)
Sfs = zeros([N,N]);

for i=1:N
    for j = 1:N
        theta = Theta(i,j);
        lam = Lam(i,j);
        d = 2^lam*norm([i,j]-fov_point(lam, theta, N, fix_point));
        Sfs(i,j) = compute_Sf(v, r, lam, d, N);
    end
end
end

