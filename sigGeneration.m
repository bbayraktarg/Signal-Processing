% geniş dalga formlarının nasıl üretililir?
% Sinyal İşleme Araç Kutusunda bulunan sinüs dalgası kare dalga vb. 
% fdatool

figure;
set(gcf,'NumberTitle','off');
set(gcf, 'Name','Sinyal İşleme');
 

Fs = 2000;                  % Örnekleme Frekansı: 2000 Hz
t = 0:1/Fs:1;               % Zaman 1 saniyelik süre
f = 50;                     % 50 Hz sinyal

% 1. Bilinen Sinyaller Oluşturma 

% Kare Dalgası
sqWave = square(2*pi*f*t);
plotSig(1,sqWave,'50 Hz Kare Dalgası');

% Testere Dişi Dalgası
sawtoothWave = sawtooth(2*pi*f*t); 
plotSig(2,sawtoothWave,'50 Hz Testere Dişi Dalgası');


% Sinüs dalga biçimi
sineWave = sin(2*pi*f*t); 
plotSig(3,sineWave,'50 Hz Sinüs Dalgası'); 

% Cıvıltı Sinyali 
chirpSig = chirp(t, 0,0.5,150);
plotSig(4,chirpSig,'Doğrusal Cıvıltı Sinyali');


%% Zaman Frekans Analizi
figure;
spectrogram(chirpSig,256,250,256,2E3,'yaxis')
set(gcf,'NumberTitle','Off','Name','Cıvıltı Sinyali Spektrogramı');



