clc
t = 0:0.001:1;
fc1= input('Enter the frequency1');
fc2= input('Enter the frequency2');
fp= input('Enter binary frequency');
A= input('Enter the Amplitude');
grid on
title('Data signal')
xlabel('time')
ylabel('amplitude')

c1=A.*sin(2*pi*fc1*t); 
c2=A.*sin(2*pi*fc2*t);
subplot (4,1,1)
plot (t,c1)
subplot (4,1,2)
plot (t,c2)
m=A.*square(2*pi*fp*t);
subplot(4,1,3)
plot(t,m)

for i=0:1000
    if m(i+1)==0
      md(i+1)=c2(i+1);
    else
      md(i+1)=c1(i+1);
    end
end
subplot (4,1,4)
plot(t,md)
