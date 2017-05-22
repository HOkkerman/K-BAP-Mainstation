clear all
close all

Fs=48000;                                   %Samplerate
T0=0.0;                                     %Start time
T1=0.1;                                     %End time
D=0.05;                                     %Distance between sensors
c=343;                                      %Speed of sound
Fc=480;                                     %Amount of angle-calculations per second
nm=4;                                       %Amount of microphones
ns=(T1-T0)*Fs;                              %Amount of samples to measure

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
load('DOA_120_2D');                          %Load data file    
X=Data_2D(2,(T0*Fs)+1:(T1*Fs));  
Y=Data_2D(3,(T0*Fs)+1:(T1*Fs));  

% V(1,:)=sqrt(X.^2+Y.^2);


% Q=1e-10;
% R=1e-1;
% 
% 
% xhat=zeros(1,ns);
% P=zeros(1,ns);
% xhatmin=zeros(1,ns);
% Pmin=zeros(1,ns);
% K=zeros(1,ns);
% 
% xhat(1)=0;
% P(1)=1;
% 
%  
% 
% for i=2:ns
%     %Time update
%     xhatmin(i)=xhat(i-1);
%     Pmin(i)=P(i-1)+Q;
%     
%     %Measurement update
%     K(i)=Pmin(i)/(Pmin(i)+R);
%     xhat(i)=xhatmin(i)+K(i)*(V(i)-xhatmin(i));
%     P(i)=(1-K(i))*Pmin(i);    
% end
% hold on
% plot(V)
% plot(xhat)
% hold off