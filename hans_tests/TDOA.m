%DOA calculator based on TDOA
%Begin- and end-times can be used to only use specific parts of the
%file, or the entire recording
%The calculation rate can also be specified, which determines how many
%angle calculations the program does per second, and as such how many
%samples are used for each calculation.


clear

Fs=48000;                                   %Samplerate
T0=0.0;                                     %Start time
T1=0.1;                                     %End time
D=0.05;                                     %Distance between sensors
c=343;                                      %Speed of sound
Fc=480;                                     %Amount of angle-calculations per second
nm=4;                                       %Amount of microphones

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
load('DOA_120_2D');                          %Load data file         
L=length(Data_2D);                          %Amount of samples in file
time=T0*Fs:(T1*Fs)-1;                       %Time axis for plots
ns=length(time);                            %Amount of samples to test
nsc=Fs/Fc;                                  %Samples uses per calculation
calcn=ns/nsc;                               %Amount of calculations




% A=zeros(nm, ns);      
for i=1:nm    
    A=Data_2D((i*3)-2,(T0*Fs)+1:(T1*Fs));           %Read amplitudes of audio signals
    Am(:,:,i)=reshape(A, nsc,(length(A)/nsc));      %Convert to matrix and store
end


cor=zeros(nm,(2*nsc)-1);
loc=zeros(calcn,1);
t=zeros(calcn, nm-1);
s=zeros(calcn, nm-1);
a=zeros(calcn, nm-1);

for i=1:calcn
    for j=1:nm
        cor(j,:)=xcorr(Am(1:end,i,1),Am(1:end,i,j));
        [~, loc(j)]=max(cor(j,:));
        
%         hold on 
%         plot(cor(j,:))
    end
    
    for j=1:(nm-1)
        t(i,j)=(loc(1)-loc(j+1))/Fs;
        s(i,j)=t(i,j)*c;
        a(i,j)=acosd(s(i,j)/(D*j));
    end
    

end

        a


