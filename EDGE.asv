Org = imread("Man1.jpg");
subplot(2,4,1);
imshow(Org);
title("Orignal Image");

% importing the image
I = rgb2gray(Org);
subplot(2, 4, 2),
imshow(I);
title("Gray Scale Image");
 
% Sobel Edge Detection
J = edge(I, 'Sobel');
J1 =imnoise(I,'salt & pepper', 0.02);
subplot(2, 4, 3),
imshow(J);
title("Sobel");
 
% Prewitt Edge detection
K = edge(I, 'Prewitt');
K1 =imnoise(I,'salt & pepper', 0.02);

subplot(2, 4, 4),
imshow(K);
title("Prewitt");
 
% Robert Edge Detection
L = edge(I, 'Roberts');
L1 =imnoise(I,'salt & pepper', 0.02);

subplot(2, 4, 5),
imshow(L);
title("Robert");

% Log Edge Detection
M = edge(I, 'log');
M1 =imnoise(I,'salt & pepper', 0.02);

subplot(2, 4, 6),
imshow(M);
title("Log");
 
% Zerocross Edge Detection
N = edge(I,'zerocross');
N1 =imnoise(I,'salt & pepper', 0.02);

subplot(2, 4, 7),
imshow(N);
title("Zerocross");
 
% Canny Edge Detection
O = edge(I, 'Canny');
O1 =imnoise(I,'salt & pepper', 0.02);

subplot(2, 4, 8),
imshow(O);
title("Canny");

fprintf('Mean Square Error:\n');
errJ = immse(J1, I);
fprintf('%0.4f\n',errJ);

errK = immse(K1, I);
fprintf('%0.4f\n',errK);

errL = immse(L1, I);
fprintf('%0.4f\n',errL);

errM = immse(M1, I);
fprintf('%0.4f\n',errM);

errN = immse(N1, I);
fprintf('%0.4f\n',errN);

errO = immse(O1, I);
fprintf('%0.4f\n',errO);

fprintf('Peak Signal To Noise Ratio:\n');

errJ2 = psnr(J1, I);
fprintf('%0.4f\n',errJ2);

errK2 = psnr(K1, I);
fprintf('%0.4f\n',errK2);

errL2 = psnr(L1, I);
fprintf('%0.4f\n',errL2);

errM2 = psnr(M1, I);
fprintf('%0.4f\n',errM2);

errN2 = psnr(N1, I);
fprintf('%0.4f\n',errN2);

errO2 = psnr(O1, I);
fprintf('%0.4f\n',errO2);

fprintf('Root Mean Square Error:\n');
errJ = sqrt(immse(J1, I));
fprintf('%0.4f\n',errJ);

errK = sqrt(immse(K1, I));
fprintf('%0.4f\n',errK);

errL = sqrt(immse(L1, I));
fprintf('%0.4f\n',errL);

errM = sqrt(immse(M1, I));
fprintf('%0.4f\n',errM);

errN = sqrt(immse(N1, I));
fprintf('%0.4f\n',errN);

errO = sqrt(immse(O1, I));
fprintf('%0.4f\n',errO);

fprintf('Absolute Mean Error: \n');
aBe1 = mae(J1,I);
fprintf('%0.4f\n',aBe1);

aBe2 = mae(K1,I);
fprintf('%0.4f\n',aBe2);

aBe3 = mae(L1,I);
fprintf('%0.4f\n',aBe3);

aBe4 = mae(M1,I);
fprintf('%0.4f\n',aBe4);

aBe5 = mae(N1,I);
fprintf('%0.4f\n',aBe5);

aBe6 = mae(O1,I);
fprintf('%0.4f\n',aBe6);

fprintf('Normalized Mean Square Error: \n');
flipJ = flip(J1);
NMSE1 = (immse(J1, I)/immse(flipJ,I));
fprintf('%0.4f\n',NMSE1);

flipK = flip(K1);
NMSE2 = (immse(K1, I)/immse(flipK,I));
fprintf('%0.4f\n',NMSE2);

flipL = flip(L1);
NMSE3 = (immse(L1, I)/immse(flipL,I));
fprintf('%0.4f\n',NMSE3);

flipM = flip(M1);
NMSE4 = (immse(M1, I)/immse(flipM,I));
fprintf('%0.4f\n',NMSE4);

flipN = flip(N1);
NMSE5 = (immse(N1, I)/immse(flipN,I));
fprintf('%0.4f\n',NMSE5);

flipO = flip(O1);
NMSE6 = (immse(O1, I)/immse(flipO,I));
fprintf('%0.4f\n',NMSE6);

