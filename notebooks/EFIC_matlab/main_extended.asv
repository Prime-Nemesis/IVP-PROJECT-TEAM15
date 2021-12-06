function[img_fov_spiht, W] = main_extended
% Matlab implementation of SPIHT (without Arithmatic coding stage)
%
% Main function 
%
% input:    Orig_I : the original image.
%           rate : bits per pixel
% output:   img_spiht 
%

fprintf('-----------   Welcome to SPIHT Matlab Demo!   ----------------\n');

fprintf('-----------   Load Image   ----------------\n');
infilename = 'lena512.bmp';
outfilename = 'lena512_fov_reconstruct_.bmp';

Orig_I = double(imread(infilename));

rate = 0.03;
OrigSize = size(Orig_I, 1);
max_bits = floor(rate * OrigSize^2);
[nRow, nColumn] = size(Orig_I);

fprintf('done!\n');
fprintf('-----------   Wavelet Decomposition   ----------------\n');
n = size(Orig_I,1); 
level = 5;
% wavelet decomposition level can be defined by users manually.

type = 'bior4.4';
[Lo_D,Hi_D,Lo_R,Hi_R] = wfilters(type);

[I_W, S, B] = dwt_extended(Orig_I, level, Lo_D, Hi_D);

v = 1;
r = pi*n*v/(180);
fix_point = [n/2, n/2];
W = compute_W(n, B, r, v, fix_point);
weighted_Iw = I_W.*W;

fprintf('done!\n');

fprintf('-----------   Encoding   ----------------\n');
img_fov_enc = func_SPIHT_Enc(weighted_Iw, max_bits, nRow*nColumn, level);   

fprintf('done!\n');
fprintf('-----------   Decoding   ----------------\n');
img_fov_dec = func_SPIHT_Dec(img_fov_enc);
img_fov_dec = img_fov_dec./W;

fprintf('done!\n');
fprintf('-----------   Wavelet Reconstruction   ----------------\n');
img_fov_spiht = func_InvDWT(img_fov_dec, S, Lo_R, Hi_R, level);

fprintf('done!\n');
fprintf('-----------   PSNR analysis   ----------------\n');

imwrite(img_fov_spiht, gray(256), outfilename, 'bmp');

Q = 255;
MSE = sum(sum((img_fov_spiht-Orig_I).^2))/nRow / nColumn;
fprintf('The psnr performance is %.2f dB\n', 10*log10(Q*Q/MSE));

