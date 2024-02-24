clc; 
M=input('enter the length of the filter='); 
disp(M); 
n=( (-(M-1)/2)) : 1 :((M-1)/2); 
wa=0:0.1:pi;
fc=0.5;  %rectangular
window w=[ones(1,M)]; 
subplot(4,3,1); 
stem(n,w) 
title('Rectangular Window')
W=freqz(w,1,wa);
subplot(4,3,2); 
plot(wa,abs(W)) 
h=fir1(M-1,fc,w); 
H=freqz(h,1,wa); 
subplot(4,3,3); 
plot(wa,abs(H)); 
hamming window w1=0.54+(0.46*cos(2*pi*n/(M-1))); 
subplot(4,3,4) 
stem(n,w1); 
title('Hamming Window') 
W1=freqz(w1,1,wa);
subplot(4,3,5) 
plot(wa,abs(W1)); 
h=fir1(M-1,fc,w1);
H=freqz(h,1,wa); 
subplots(4,3,6); 
plot(wa,abs(H)); 
hanning window w2=0.5+0.5*cos(2*pi*n/(M-1)); 
subplot(4,3,7)
stem(n,w2);
title('Hanning Window') 
W2=freqz(w2,1,wa); 
subplot(4,3,8)
plot(wa,abs(W2)); 
h=fir1(M-1,fc,w2);
H=freqz(h,1,wa);
subplot(4,3,9); 
plot(wa,abs(H)); 
blackman window w3=0.42+0.5*cos((2*pi*n)/(M-1))+0.08*cos((4*pi*n)/(M-1)); 
subplot(4,3,10) 
stem(n,w3);
title('Blackman Window') 
W3=freqz(w3,1,wa); 
subplot(4,3,11)
plot(wa,abs(W3)); 
h=fir1(M-1,fc,w3); 
H=freqz(h,1,wa); 
subplot(4,3,12); 
plot(wa,abs(H));