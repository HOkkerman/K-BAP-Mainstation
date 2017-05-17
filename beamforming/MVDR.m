%%MVDR

clear all;

load('DOA_60_2D.mat')
Length=480000; % signal length in samples
fs=48000; %Sample frequency
fc=3432;  %Carrier frequency    
%% load signal + freq response
rxSignal(:,1)=fft(Data_2D(1,1:Length));
rxSignal(:,2)=fft(Data_2D(4,1:Length));
rxSignal(:,3)=fft(Data_2D(7,1:Length));
rxSignal(:,4)=fft(Data_2D(10,1:Length));

%% cut signal into parts fc-1e3 : fc+1e3-1 = 2
% SPF=Length/fs; %samples/freq(Hz)=seconde
% Signal(:,1)=rxSignal(SPF*(fc-1e3):SPF*(fc+1e3)-1,1);
% Signal(:,2)=rxSignal(SPF*(fc-1e3):SPF*(fc+1e3)-1,1);
% Signal(:,3)=rxSignal(SPF*(fc-1e3):SPF*(fc+1e3)-1,1);
% Signal(:,4)=rxSignal(SPF*(fc-1e3):SPF*(fc+1e3)-1,1);
% L=Length;
% f=[fc-1e3:1/10:fc+1e3-1/10];

Signal(:,1)=rxSignal(1:240000,1);
Signal(:,2)=rxSignal(1:240000,2);
Signal(:,3)=rxSignal(1:240000,3);
Signal(:,4)=rxSignal(1:240000,4);

L=length(Signal(:,1));
f=[0:1/L:1-1/L]*fs/2;

figure(1);
subplot(411); 
plot(f,abs(Signal(:,1)));axis tight;
title('Frequency response at AVS 1');xlabel('Frequency (Hz)');ylabel('Magnitude');
subplot(412);
plot(f,abs(Signal(:,2)));axis tight;
title('Frequency response at AVS 2');xlabel('Frequency (Hz)');ylabel('Magnitude');
subplot(413);
plot(f,abs(Signal(:,3)));axis tight;
title('Frequency response at AVS 3');xlabel('Frequency (Hz)');ylabel('Magnitude');
subplot(414);
plot(f,abs(Signal(:,4)));axis tight;
title('Frequency response at AVS 4');xlabel('Frequency (Hz)');ylabel('Magnitude');



R=cov(Signal);
Rinv=inv(R);

SoundSpeed=343;
carrierFreq = 3432; %Hz
wavelength = SoundSpeed/carrierFreq;
%elementPos = [0 0.05 .1 .15;0 0 0 0];
%elementPos = [-.150 -.1 -.05 0;0 0 0 0];
%elementPos = [-.075 -.025 .025 .075;0 0 0 0];

Pmvdr=zeros(1,361);

k=2*pi/wavelength;
d=0.05;

for ang=-180:180
delta=[ang;0];    
%A = steervec(elementPos/wavelength,delta);
A=[1; exp(1j*k*d*cos(ang*2*pi/360)); exp(2j*k*d*cos(ang*2*pi/360)); exp(3j*k*d*cos(ang*2*pi/360))];
%AT=A.';
AT=ctranspose(A);
Pmvdr(ang+181)=1/(AT*Rinv*A);
%Pmvdr=inv(AT.*Rxinv.*A);
end
%Pmvdr=[Pmvdr(91:360) Pmvdr(1:90)];
figure(2);
phi=(-180:1:180)*2*pi/360;
polarplot(phi,abs(Pmvdr));

