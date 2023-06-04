n= 0:50;
fs = 8000; %örnekleme oranı
f = 400;

xs = sin(2*pi*f*n/fs+0);
subplot(2,1,1);
stem(n,xs);
xlabel('örnekleme aralığı');
ylabel('genlik');
title('sinüs sinyali')

xc = cos(2*pi*f*n/fs+0);
subplot(2,1,2);
stem(n,xc);
xlabel('örnekleme aralığı');
ylabel('genlik');
title('cosinüs sinyali')
