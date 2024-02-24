clc;
N=input("Enter the value of N(power of 2)");
x=input("Enter the N point input sequence");
n=[0:1:N-1];
k=[0:1:N-1];
subplot(2,2,1)
stem(n,x);
xlabel('n');
ylabel('Amplitude');
title('Input sequence');
W=exp(-j*2*pi/N);
r=n'*k;
D=W.^r;
X=x*D; 
disp("X=");
disp(X); 
Xm=abs(X);
subplot(2,2,2)
stem(k,Xm);
xlabel('k');
ylabel('Amplitude'); 
title('DFT Magnitude'); 
Xa=angle(X); 
subplot(2,2,3) 
stem(k,Xa); 
xlabel('k');
ylabel('Amplitude'); 
title('DFT Phase angle'); 
Wi=exp(j*2*pi/N);
ri=n'*k; 
ID=Wi.^ri;
x1=(1/N)*X*ID; 
disp("x1="); 
disp(x1);
subplot(2,2,4) 
stem(n,abs(x1)); 
xlabel('n');
ylabel('Amplitude');
title('Input sequence using IDFT equation');