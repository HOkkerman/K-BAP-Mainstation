%Delay and Sum Beamforming algorithm

clear
close all

Fs=48000;                                   %Samplerate
T0=0.0;                                     %Start time
T1=0.1;                                     %End time
Fc=200;

ns=(T1-T0)*Fs;                              %Amount of samples to measure



load('DOA_15_2D');                       
X=Data_2D(2,(T0*Fs)+1:(T1*Fs));  
Y=Data_2D(3,(T0*Fs)+1:(T1*Fs));  
angle=atand(Y./X);


[b,a]=butter(6,Fc/(Fs/2));
anglebutter=filter(b,a,angle);


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Kalman test

Q=1e-10;
R=1e-1;


xhat=zeros(1,ns);
P=zeros(1,ns);
xhatmin=zeros(1,ns);
Pmin=zeros(1,ns);
K=zeros(1,ns);

xhat(1)=0;
P(1)=1;

 

for i=2:ns
    %Time update
    xhatmin(i)=xhat(i-1);
    Pmin(i)=P(i-1)+Q;
    
    %Measurement update
    K(i)=Pmin(i)/(Pmin(i)+R);
    xhat(i)=xhatmin(i)+K(i)*(angle(i)-xhatmin(i));
    P(i)=(1-K(i))*Pmin(i);    
end


hold on
plot(angle);
plot(anglebutter);
plot(xhat);
hold off

