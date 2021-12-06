% Matlab implementation of SPIHT (without Arithmatic coding stage)
%
% The function in this toolbox are listed as follow:
%
% func_SPIHT_Demo_Main -- Main function
% func_SPIHT_Eec -- Encoder
% func_SPIHT_Dec -- Decoder
% func_DWT -- Wavelet decomposition
% func_InvDWT -- Inverse wavelet decomposition
% 
% How To Use
% run func_SPIHT_Demo_Main.m
%
% ---------------------------
%   Performance evaluation : this toolbox VS. SPIHT
%
%   Test image: lena512.raw
%
%   bpp	    SPIHT(dB) This code(dB)
%   0.1000   29.8107	29.3202
%   0.2000   32.7202	32.2514
%   0.3000   34.5479	34.0331
%   0.4000   35.8422	35.4857
%   0.5000   36.8623	36.5939
%   0.6000   37.6650	37.3759
%   0.7000   38.2581	38.0491
%   0.8000   38.9390	38.7058
%   0.9000   39.5218  	39.3437
%
% Ref.
% Amir Said and William A. Pearlman, "A New Fast and Efficient Image Codec Based on Set Partitioning in Hierarchical Trees," 
% IEEE Transactions on Circuits and Systems for Video Technology, vol. 6, pp. 243-250, June 1996.
% ---------------------------
%
%