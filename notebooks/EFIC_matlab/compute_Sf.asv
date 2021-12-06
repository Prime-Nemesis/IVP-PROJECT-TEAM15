function [Sf] = compute_Sf(v, r, lam, d, N)

e = atan(d/N*v);
fc = 2.3*log(64)/(0.106*(e+2.3));
f = r*2^(-lam);
fd = r/2;

fm = min(fd,fc); % cutoff freq for this x.

if f>fm
    Sf=0;
else
    Sf = exp(-0.0461*f*e);

end

