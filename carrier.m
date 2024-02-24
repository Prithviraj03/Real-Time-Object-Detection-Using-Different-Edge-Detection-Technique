t = 0:0.001:1;
f1= input('Enter the frequency');
A1= input('Enter the Amplitude');
x1= A1*sin(2*pi*f1*t);
subplot(3,1,1)
plot(t,x1)
grid on
title('Carrier')
xlabel('time')
ylabel('amplitude')
f2= input('Enter the frequency');
A2= input('Enter the Amplitude');
x2= A2*square(2*pi*f2*t);
subplot(3,1,2)
plot(t,x2)
grid on
title('DATA SIGNAL')
xlabel('time')
ylabel('amplitude')
grid on
z=x1.*x2;
subplot(3,1,3)
plot(t,z)
grid on
title('PSK SIGNAL')
xlabel('time')
ylabel('amplitude')
