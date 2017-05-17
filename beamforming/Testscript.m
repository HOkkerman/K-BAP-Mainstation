%% TESTSCRIPT

clear all;
close all;
%% 22KHZ tot 24KHZ FREQ BIN
L=480000;

load('DOA_15_2D.mat')
Signal(1,:)=Data_2D(1,1:L);      %%Signal = 4x480 000 TIME DOMAIN
Signal(2,:)=Data_2D(4,1:L);
Signal(3,:)=Data_2D(7,1:L);
Signal(4,:)=Data_2D(10,1:L);
Length=length(Signal);
Fs=48e3;
Fc=3432;
SignalFD = Time2Freq(Signal, Length, Fs); %%240000X4 Frequency domain
SignalFD=SignalFD(round(.9*Fc*Length/Fs):round(1.1*Fc*Length/Fs),:); %% take a frequency bin around Fcarrier
figure(1)
MVDRfunction(SignalFD, Fc);
legend 15, hold on 

load('DOA_30_2D.mat')
Signal(1,:)=Data_2D(1,1:L);      %%Signal = 4x480 000 TIME DOMAIN
Signal(2,:)=Data_2D(4,1:L);
Signal(3,:)=Data_2D(7,1:L);
Signal(4,:)=Data_2D(10,1:L);
Length=length(Signal);
Fs=48e3;
Fc=3432;
SignalFD = Time2Freq(Signal, Length, Fs); %%240000X4 Frequency domain
SignalFD=SignalFD(round(.9*Fc*Length/Fs):round(1.1*Fc*Length/Fs),:); %% take a frequency bin around Fcarrier
figure(1)
MVDRfunction(SignalFD, Fc);
legend 30, hold on 


load('DOA_45_2D.mat')
Signal(1,:)=Data_2D(1,1:L);      %%Signal = 4x480 000 TIME DOMAIN
Signal(2,:)=Data_2D(4,1:L);
Signal(3,:)=Data_2D(7,1:L);
Signal(4,:)=Data_2D(10,1:L);
Length=length(Signal);
Fs=48e3;
Fc=3432;
SignalFD = Time2Freq(Signal, Length, Fs); %%240000X4 Frequency domain
SignalFD=SignalFD(round(.9*Fc*Length/Fs):round(1.1*Fc*Length/Fs),:); %% take a frequency bin around Fcarrier
figure(1)
MVDRfunction(SignalFD, Fc);
legend 45, hold on 


load('DOA_60_2D.mat')
Signal(1,:)=Data_2D(1,1:L);      %%Signal = 4x480 000 TIME DOMAIN
Signal(2,:)=Data_2D(4,1:L);
Signal(3,:)=Data_2D(7,1:L);
Signal(4,:)=Data_2D(10,1:L);
Length=length(Signal);
Fs=48e3;
Fc=3432;
SignalFD = Time2Freq(Signal, Length, Fs); %%240000X4 Frequency domain
SignalFD=SignalFD(round(.9*Fc*Length/Fs):round(1.1*Fc*Length/Fs),:); %% take a frequency bin around Fcarrier
figure(1)
MVDRfunction(SignalFD, Fc);
legend 60, hold on 


load('DOA_75_2D.mat')
Signal(1,:)=Data_2D(1,1:L);      %%Signal = 4x480 000 TIME DOMAIN
Signal(2,:)=Data_2D(4,1:L);
Signal(3,:)=Data_2D(7,1:L);
Signal(4,:)=Data_2D(10,1:L);
Length=length(Signal);
Fs=48e3;
Fc=3432;
SignalFD = Time2Freq(Signal, Length, Fs); %%240000X4 Frequency domain
SignalFD=SignalFD(round(.9*Fc*Length/Fs):round(1.1*Fc*Length/Fs),:); %% take a frequency bin around Fcarrier
figure(1)
MVDRfunction(SignalFD, Fc);
legend 75, hold on 


load('DOA_90_2D.mat')
Signal(1,:)=Data_2D(1,1:L);      %%Signal = 4x480 000 TIME DOMAIN
Signal(2,:)=Data_2D(4,1:L);
Signal(3,:)=Data_2D(7,1:L);
Signal(4,:)=Data_2D(10,1:L);
Length=length(Signal);
Fs=48e3;
Fc=3432;
SignalFD = Time2Freq(Signal, Length, Fs); %%240000X4 Frequency domain
SignalFD=SignalFD(round(.9*Fc*Length/Fs):round(1.1*Fc*Length/Fs),:); %% take a frequency bin around Fcarrier
figure(1)
MVDRfunction(SignalFD, Fc);
legend 90, hold on 


load('DOA_105_2D.mat')
Signal(1,:)=Data_2D(1,1:L);      %%Signal = 4x480 000 TIME DOMAIN
Signal(2,:)=Data_2D(4,1:L);
Signal(3,:)=Data_2D(7,1:L);
Signal(4,:)=Data_2D(10,1:L);
Length=length(Signal);
Fs=48e3;
Fc=3432;
SignalFD = Time2Freq(Signal, Length, Fs); %%240000X4 Frequency domain
SignalFD=SignalFD(round(.9*Fc*Length/Fs):round(1.1*Fc*Length/Fs),:); %% take a frequency bin around Fcarrier
figure(1)
MVDRfunction(SignalFD, Fc);
legend 105, hold on 


load('DOA_120_2D.mat')
Signal(1,:)=Data_2D(1,1:L);      %%Signal = 4x480 000 TIME DOMAIN
Signal(2,:)=Data_2D(4,1:L);
Signal(3,:)=Data_2D(7,1:L);
Signal(4,:)=Data_2D(10,1:L);
Length=length(Signal);
Fs=48e3;
Fc=3432;
SignalFD = Time2Freq(Signal, Length, Fs); %%240000X4 Frequency domain
SignalFD=SignalFD(round(.9*Fc*Length/Fs):round(1.1*Fc*Length/Fs),:); %% take a frequency bin around Fcarrier
figure(1)
MVDRfunction(SignalFD, Fc);
legend 120, hold on 


load('DOA_135_2D.mat')
Signal(1,:)=Data_2D(1,1:L);      %%Signal = 4x480 000 TIME DOMAIN
Signal(2,:)=Data_2D(4,1:L);
Signal(3,:)=Data_2D(7,1:L);
Signal(4,:)=Data_2D(10,1:L);
Length=length(Signal);
Fs=48e3;
Fc=3432;
SignalFD = Time2Freq(Signal, Length, Fs); %%240000X4 Frequency domain
SignalFD=SignalFD(round(.9*Fc*Length/Fs):round(1.1*Fc*Length/Fs),:); %% take a frequency bin around Fcarrier
figure(1)
MVDRfunction(SignalFD, Fc);
legend 135, hold on 


load('DOA_150_2D.mat')
Signal(1,:)=Data_2D(1,1:L);      %%Signal = 4x480 000 TIME DOMAIN
Signal(2,:)=Data_2D(4,1:L);
Signal(3,:)=Data_2D(7,1:L);
Signal(4,:)=Data_2D(10,1:L);
Length=length(Signal);
Fs=48e3;
Fc=3432;
SignalFD = Time2Freq(Signal, Length, Fs); %%240000X4 Frequency domain
SignalFD=SignalFD(round(.9*Fc*Length/Fs):round(1.1*Fc*Length/Fs),:); %% take a frequency bin around Fcarrier
figure(1)
MVDRfunction(SignalFD, Fc);
legend 150, hold on 


load('DOA_165_2D.mat')
Signal(1,:)=Data_2D(1,1:L);      %%Signal = 4x480 000 TIME DOMAIN
Signal(2,:)=Data_2D(4,1:L);
Signal(3,:)=Data_2D(7,1:L);
Signal(4,:)=Data_2D(10,1:L);
Length=length(Signal);
Fs=48e3;
Fc=3432;
SignalFD = Time2Freq(Signal, Length, Fs); %%240000X4 Frequency domain
SignalFD=SignalFD(round(.9*Fc*Length/Fs):round(1.1*Fc*Length/Fs),:); %% take a frequency bin around Fcarrier
figure(1)
MVDRfunction(SignalFD, Fc);
legend ('15','30','45','60','75','90','105','120','135','150','165') 


