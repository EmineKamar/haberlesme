x=1:0.1:10;
y=exp(x);
subplot(3,1,1),plot(x,y,'k--*');
xlabel('radyan');
ylabel('exp(x)');
grid on

z=log(x);
subplot(3,1,2),plot(x,z,'b-*');
xlabel ('radyan');
ylabel ('log(x)');
grid on
