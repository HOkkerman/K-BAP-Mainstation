%%Testscript for simulated signals
%dit script simuleert een signaal met signalsim en plot het resultaat met
%beamforming
clear all;
close all;

% Fs=48e3;
% Fc=3.5e3;
% duration=1;
% Length=duration*Fs;
% Y=createSignal([-.15 -.1 -.05 0],[0 0 0 0],[0 0 0 0], Fc, 343, Fs, [15-90 45-90 75-90], [0 0 0], [3 3 3], Length,0); %4 sources is teveel
% B = Time2Freq(Y, Length, Fs);
% B=B(.9*Fc*Length/Fs:1.1*Fc*Length/Fs,:); %% take a frequency bin around Fcarrier
% figure()
% MVDRfunction(B, Fc);
% hold on
% DelayandSumfunction(B, Fc);


%%%%%%%%%%%%%%%%%%%%%%%%%
loc=[-2;1];
Fc=3e3;
Fs=48e3;
duration=10;
Length=480000;

y = SignalSim(Fc, duration, loc);
b = Time2Freq(y, duration*Fs, Fs);
b(1:.9*Fc*Length/Fs)=0;
b(.9*Fc*Length/Fs,:)=0;
%b=b(.9*Fc*Length/Fs:1.1*Fc*Length/Fs,:); %% take a frequency bin around Fcarrier
figure()
MVDRfunction(b, Fc);

