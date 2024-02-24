clc
clear all
close all
warning off
c=webcam;
while true
    x=c.snapshot;
    imshow(x);
    a=rgb2gray(x);
    subplot(2,4,1);
    imshow(x);
    title("original image");
    
    subplot(2,4,2);
    imshow(a);
    title("Gray Scale");
    
    w=edge(a,"canny");
    subplot(2,4,3);
    imshow(w);
    title('canny');
    
    f=edge(a,'sobel');
    subplot(2,4,4);
    imshow(f);
    title("Sobel");
    
    g=edge(a,'Prewitt');
    subplot(2,4,5);
    imshow(g);
    title("Prewitt");
    
    h=edge(a,'Roberts');
    subplot(2,4,6);
    imshow(h);
    title("Roberts");

    j=edge(a,'Log');
    subplot(2,4,7);
    imshow(j);
    title("Log");
    
    k=edge(a,'zerocross');
    subplot(2,4,8);
    imshow(k);
    title("zerocross");
end