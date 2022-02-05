t=0:0.1:1;
m=cos(2*pi*10.*t);
c=cos(2*pi*500.*t);
A=input('bir deger giriniz=')
ct=cos(2*pi*500.*t+A);
M=1;
AM=M.*m.c+M.*ct;
DSB=M.*m.c;
subplot(5,1,1)
plot(t,m)
title('mesaj sinyali')

subplot(5,1,2)
plot(t,c)
title('tasiyici sinyal')

sublpot(5,1,3)
plot(t,ct)
subplot(5,1,4)
plot(t,DSB)
subplot(5,1,5)
plot(t,AM)
title('moduleli sinyal')
