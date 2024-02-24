[x,y] = meshgrid(-128:127,-128:127);
z = sqrt(x.^2+y.^2);
c = z>15;
a = imread('Man1.jpg');
i = im2gray(a);
af = fftshift(fft2(i));
hp = af.*c;
fftshow(hp)
hpi = ifft2(hp);
ifftshow(hpi)
c = z>50;
hp = af.*c;
fftshow(hp)
hpi = ifft2(hp);
ifftshow(hpi)