close all
a = imread('CameraMan.jpg');
i = im2gray(a);
f = ones(3,3)/9;
i1 = filter2(f,i,'same');
z = i1/255;
subplot(2,3,1); imshow(a);
title("Orignal Image");
subplot(2,3,2);imshow(i);
title("Grayscale Image");
subplot(2,3,3);imshow(z);
title("LPF Image");