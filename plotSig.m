function   plotSig( num, sigData, titleString )

Fs = 2000;      % Örnekleme Frekansı: 2000 Hz
t = 0:1/Fs:1;   % Süre: 1 saniye
subplot(2,2,num)
plot(t,sigData);
if num == 4
set(gca,'XLim',[0,0.35]); 
else
 set(gca,'XLim',[0,0.15]); 
end   
    set(gca,'YLim',[-1.5,1.5]);box on;
title(titleString);
grid on;
end

