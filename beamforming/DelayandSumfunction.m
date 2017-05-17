function y = DelayandSumfunction( Signal, Fc )
%Plotting the MVDR spectrum
    %% initialisatie wavelength=2*d -> laagste freq=3432 ?
    
    wavelength = 343/Fc; %meter  soundspeed/Fc_min
    k=2*pi/wavelength;
    d=0.05; %d=SoundSpeed/(Fc*2);
      
    DelaySum=zeros(1,180);
    R=corr(Signal);
    %[~, nSamples] = size(Signal);
    %R = R/nSamples;

    %% Scanning
for ang=1:180
       
    A=[1; exp(1i*k*1*d*cos(ang*2*pi/360)); exp(1i*k*2*d*cos(ang*2*pi/360)); exp(1i*k*3*d*cos(ang*2*pi/360))];
    AT=ctranspose(A);
    DelaySum(ang)=AT*R*A;

end
    %% Plotting
    DelaySum = abs(DelaySum)/max(abs(DelaySum));
    phi=(1:1:180)*2*pi/360;
    polarplot(phi,real(DelaySum));
    y=abs(DelaySum);
end

