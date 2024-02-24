clc
e1=input('Enter value of e1');
e2=input('Enter value of e2');
E = e1:0.01:e2;
E1=10.^(E./10);
pbBSK=0.5*erfc(sqrt(E1));
subplot(3,2,1)
plot(E,pbBSK)
title('BPSK')
xlabel('No in db')
ylabel('Probablity of error')
grid on

pbBFSK=0.5*erfc(sqrt(E1./2));
subplot(3,2,2)
plot(E,pbBFSK)
title('BFSK')
xlabel('No in db')
ylabel('Probablity of error')
grid on

pbQPSK=0.5*erfc(sqrt(E1));
subplot(3,2,3)
plot(E,pbQPSK)
title('QPSK')
xlabel('No in db')
ylabel('Probablity of error')
grid on

pbdPSK=0.5*exp(-E1);
subplot(3,2,4)
plot(E,pbdPSK)
title('dPSK')
xlabel('No in db')
ylabel('Probablity of error')
grid on

pbBFcSK=0.5*exp(-E1/2);
subplot(3,2,5)
plot(E,pbBFcSK)
title('BFSK non coherent')
xlabel('No in db')
ylabel('Probablity of error')
grid on