clc; 
clf; 
Wp=input ('Pass band Edge frequency');
%pass band frequency 
Ws=input('Stop band Edge frequency')
%stop band frequency 
Ap=input ('Pass band attenuation in dB ');
%pass band ripple 
As=input ('Stop band attenuation in dB') ;
%stop band ripple 
a=(10^(0.1*Ap))-1;
b=(10^(0.1*As))-1; 
d=sqrt(b/a); 
e=log(d);
f=log (Ws/Wp);
n=e/f; 
N=ceil(n);
disp('Butterworth filter ordere N=');
disp(N); 
g=acosh(d); 
h=acosh(Ws/Wp);
M=g/h; 
disp(ceil(M));
M1=ceil(M); 
disp('Chebyshev filter order M1=');
disp(M1); 
Wn=0.5; 
disp('cut off frequency='); 
disp(Wn); 
[nums,dens] = butter(N,Wn)%filter coefficient calculation
h=freqz(nums,dens); 
hm=abs(h);
ha=angle(h); 
subplot(2,2,1); 
plot(hm);
title('Butterworth filter magnitude'); 
subplot(2,2,2); 
plot(ha);
title('Butterworth filter phase ');
[nums1,dens1] = cheby1(M1,Ap,Wn);
h=freqz(nums1,dens1);
hm=abs(h); 
ha=angle(h); 
subplot(2,2,3); 
plot(hm);
title('Chebyshev filter magnitude'); 
subplot(2,2,4); 
plot(ha);
title('Chebyshev filter phase')