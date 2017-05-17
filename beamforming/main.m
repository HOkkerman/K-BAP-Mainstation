%% main
%% deze functie plot de beamforming resultaten van DAS en MVDR
clear all;
load('DOA_120_2D.mat')
sensor=1; %%1=pressure, 2=Vx, 3=Vy
Length=480000;
Fs=48e3;
Fc=3432;
Signal(1,:)=Data_2D(sensor,1:Length);      %%Signal = 4x480 000 TIME DOMAIN
Signal(2,:)=Data_2D(sensor+3,1:Length);
Signal(3,:)=Data_2D(sensor+6,1:Length);
Signal(4,:)=Data_2D(sensor+9,1:Length);


SignalFD = Time2Freq(Signal, Length, Fs); %%240000X4 Frequency domain
SignalFD=SignalFD(round(.9*Fc*Length/Fs):round(1.1*Fc*Length/Fs),:); %% take a frequency bin around Fcarrier
figure()
MVDRfunction(SignalFD, Fc);
hold on
DelayandSumfunction(SignalFD, Fc);
% hold on
% MUSICfunction(SignalFD, Fc);