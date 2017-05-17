%% Single AVS beamforming
%% dit script plot de beams van de 4 individuele AVSs.
clear all;

load('DOA_15_2D.mat')
Length=480000;
Fs=48e3;
Fc=3432;
Signal(1,:)=Data_2D(1,1:Length);      %%Signal = 3x480 000 TIME DOMAIN
Signal(2,:)=Data_2D(2,1:Length);
Signal(3,:)=Data_2D(3,1:Length);

SignalFD = Time2Freq(Signal, Length, Fs); %%240000X4 Frequency domain
SignalFD=SignalFD(round(.9*Fc*Length/Fs):round(1.1*Fc*Length/Fs),:); %% take a frequency bin around Fcarrier
figure()

%Plotting the MVDR spectrum
    %% initialisatie wavelength=2*d -> laagste freq=3432 ?

    wavelength = 343/Fc; %meter  soundspeed/Fc_min
    k=2*pi/wavelength;
    d=0.05; %d=SoundSpeed/(Fc*2);
      
    Pmvdr=zeros(1,180);
    R=corr(SignalFD);
    %[~, nSamples] = size(Signal);
    %R = R/nSamples;
    Rinv=inv(R);

    %% Scanning
for ang=1:180
       
    A=[exp(0*1i*k*d*cos(ang*2*pi/360)); cos(ang*2*pi/360)*exp(0*1i*k*d*cos(ang*2*pi/360)); sin(ang*2*pi/360)*exp(0*1i*k*d*cos(ang*2*pi/360))];
    AT=ctranspose(A);
    Pmvdr(ang)=1/(AT*Rinv*A);

end
    %% Plotting
    Pmvdr = abs(Pmvdr)/max(abs(Pmvdr));
    phi=(1:1:180)*2*pi/360;
    polarplot(phi,real(Pmvdr));
    hold on
    y=abs(Pmvdr);
    
    %%
    
Signal(1,:)=Data_2D(4,1:Length);      %%Signal = 3x480 000 TIME DOMAIN
Signal(2,:)=Data_2D(5,1:Length);
Signal(3,:)=Data_2D(6,1:Length);

SignalFD = Time2Freq(Signal, Length, Fs); %%240000X4 Frequency domain
SignalFD=SignalFD(round(.9*Fc*Length/Fs):round(1.1*Fc*Length/Fs),:); %% take a frequency bin around Fcarrier


%Plotting the MVDR spectrum
    %% initialisatie wavelength=2*d -> laagste freq=3432 ?

    wavelength = 343/Fc; %meter  soundspeed/Fc_min
    k=2*pi/wavelength;
    d=0.05; %d=SoundSpeed/(Fc*2);
      
    Pmvdr=zeros(1,180);
    R=corr(SignalFD);
    %[~, nSamples] = size(Signal);
    %R = R/nSamples;
    Rinv=inv(R);

    %% Scanning
for ang=1:180
       
    A=[exp(1*i*k*d*cos(ang*2*pi/360)); cos(ang*2*pi/360)*exp(1*1i*k*d*cos(ang*2*pi/360)); sin(ang*2*pi/360)*exp(1*1i*k*d*cos(ang*2*pi/360))];
    AT=ctranspose(A);
    Pmvdr(ang)=1/(AT*Rinv*A);

end
    %% Plotting
    Pmvdr = abs(Pmvdr)/max(abs(Pmvdr));
    phi=(1:1:180)*2*pi/360;
    polarplot(phi,real(Pmvdr));
    hold on
    y=abs(Pmvdr);
    
    %%
    
Signal(1,:)=Data_2D(7,1:Length);      %%Signal = 3x480 000 TIME DOMAIN
Signal(2,:)=Data_2D(8,1:Length);
Signal(3,:)=Data_2D(9,1:Length);

SignalFD = Time2Freq(Signal, Length, Fs); %%240000X4 Frequency domain
SignalFD=SignalFD(round(.9*Fc*Length/Fs):round(1.1*Fc*Length/Fs),:); %% take a frequency bin around Fcarrier


%Plotting the MVDR spectrum
    %% initialisatie wavelength=2*d -> laagste freq=3432 ?

    wavelength = 343/Fc; %meter  soundspeed/Fc_min
    k=2*pi/wavelength;
    d=0.05; %d=SoundSpeed/(Fc*2);
      
    Pmvdr=zeros(1,180);
    R=corr(SignalFD);
    %[~, nSamples] = size(Signal);
    %R = R/nSamples;
    Rinv=inv(R);

    %% Scanning
for ang=1:180
       
    A=[exp(2*1i*k*d*cos(ang*2*pi/360)); cos(ang*2*pi/360)*exp(2*1i*k*d*cos(ang*2*pi/360)); sin(ang*2*pi/360)*exp(2*1i*k*d*cos(ang*2*pi/360))];
    AT=ctranspose(A);
    Pmvdr(ang)=1/(AT*Rinv*A);

end
    %% Plotting
    Pmvdr = abs(Pmvdr)/max(abs(Pmvdr));
    phi=(1:1:180)*2*pi/360;
    polarplot(phi,real(Pmvdr));
    hold on
    y=abs(Pmvdr);
    
    %%
    
Signal(1,:)=Data_2D(10,1:Length);      %%Signal = 3x480 000 TIME DOMAIN
Signal(2,:)=Data_2D(11,1:Length);
Signal(3,:)=Data_2D(12,1:Length);

SignalFD = Time2Freq(Signal, Length, Fs); %%240000X4 Frequency domain
SignalFD=SignalFD(round(.9*Fc*Length/Fs):round(1.1*Fc*Length/Fs),:); %% take a frequency bin around Fcarrier


%Plotting the MVDR spectrum
    %% initialisatie wavelength=2*d -> laagste freq=3432 ?

    wavelength = 343/Fc; %meter  soundspeed/Fc_min
    k=2*pi/wavelength;
    d=0.05; %d=SoundSpeed/(Fc*2);
      
    Pmvdr=zeros(1,180);
    R=corr(SignalFD);
    %[~, nSamples] = size(Signal);
    %R = R/nSamples;
    Rinv=inv(R);

    %% Scanning
for ang=1:180
       
    A=[3*exp(1i*k*d*cos(ang*2*pi/360)); cos(ang*2*pi/360)*exp(3*1i*k*d*cos(ang*2*pi/360)); sin(ang*2*pi/360)*exp(3*1i*k*d*cos(ang*2*pi/360))];
    AT=ctranspose(A);
    Pmvdr(ang)=1/(AT*Rinv*A);

end
    %% Plotting
    Pmvdr = abs(Pmvdr)/max(abs(Pmvdr));
    phi=(1:1:180)*2*pi/360;
    polarplot(phi,real(Pmvdr));
    y=abs(Pmvdr);
