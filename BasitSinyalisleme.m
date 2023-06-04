f1 = 20;    %frekans değeri belirlenir
ts = 1/100; %zaman aralığı belirlenir
T = 3;
t = 0:ts:T;
sinyal_20hz = sin(2*pi*f1*t);
plot(sinyal_20hz) %çizgi grafiği oluşturur
f2 = 1;
sinyal_1hz = sin(2*pi*1*t);
plot(sinyal_1hz)
sinyal_toplam = sinyal_20hz+sinyal_1hz;
plot(sinyal_toplam)
plot(filtre)
cikis = conv(sinyal_toplam,filtre);
subplot(3,1,1);
plot(sinyal_toplam)
title('sinyal');

subplot(3,1,2);
plot(filtre)
title('impuls cevabı');
subplot(3,1,3);
plot(cikis)
title(cikis);
shg
