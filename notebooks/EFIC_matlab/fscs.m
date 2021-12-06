function [fscs_mat] = fscs(mat)

a = min(mat(:));
b = max(mat(:));
fscs_mat = (mat-a).*(255/(b-a));


end

