function [fov_p] = fov_point(lam, theta, N, fix_point)
fov_p = fix_point;

if theta==1
    fov_p(2) = fov_p(2)+ N;
elseif theta==2
    fov_p(1) = fov_p(1) + N;
elseif theta==3
     fov_p = fov_p + N;
end
fov_p = fov_p/(2^lam);
end

