clc
clear all
close all

t=0:0.001:3;
Am=5;
Fm=3;
mt=Am*sin(2*pi*Fm*t);

Ac=3;
Fc=100;
ct=Ac*sin(2*pi*Fc*t);

dsb=mt.*ct;

demodulasyon=dsb.*ct;

wp=2/1000;
ws=4/1000;
Rp=0.5;
Rs=5;
[n,w]=buttord(wp,ws,Rp,Rs)
[a,b]=butter(n,w,'low')

demodulation=filter(a,b,demodulasyon);

figure
subplot(3,1,1),plot(t,mt),title('mesaj isareti'),grid on
xlabel('zaman[sn]'),ylabel('genlik[v]')
subplot(3,1,2),plot(t,dsb),title('modüleli işaret'),grid on,xlabel('zaman[sn]'),ylabel('genlik[v]')


subplot(3,1,3),plot(t,demodulasyon),title('genlik modüleli işaret'),grid on
xlabel('zaman[sn]'),ylabel('genlik[v]')



