ma=1; % yüzde yüz genlik modülasyonu (ideal modülasyon)
t=-1:2e-4:1;
A=input(' mesaj isaretin genlik degerini giriniz=');
Fm=input(' mesaj isaretinin frekans degerini giriniz=');
mt=A*sin(2*pi*Fm*t);
figure(1)
subplot(3,1,1)
plot(t,mt,'b')
xlabel('zaman;')
ylabel('genlik;')
title('mesaj isareti;')
legend('mesaj isareti;')

Ac=input('tasiyici isaretin genlik degerini giriniz=');
Fc=input('tasiyici isaretin frekans degerini giriniz=');
ct=Ac*sin(2*pi*Fc*t);
subplot(3,1,2)
plot(t,ct,'r')
xlabel('zaman;')
ylabel('genlik;')
title('tasiyici isaret;')
legend('tasiyici isaret;')

genlikmodulasyonu=(1+ma*mt).*ct
subplot(3,1,3);
plot(t,genlikmodulasyonu)
legend('genlikmodulasyon;')

ha=axes('position',[0 0 1 1],'Xlim',[-0.5 0.5],'Ylim',[0 1]);











