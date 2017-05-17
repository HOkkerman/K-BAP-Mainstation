function [ y ] = SignalSim( f, duration, loc )
%signalsim simuleert een signaal
%%%create signal input array
%%% loc=[x;y];
    fs=48000;
    t=[0:1/fs:duration+10];
    x=sin(2*pi*f*t);
    rs = RandStream.create('mt19937ar','Seed',2008);
    noisePwr = .5;   % noise power 
    noise = sqrt(noisePwr/2)*randn(rs,size(x));
    Signal = x + noise;
    %plot(t,Signal)
    AVS1=[0;0];AVS2=[-0.05;0];AVS3=[-0.1;0];AVS4=[-0.15;0];
    d1=loc-AVS1; d2=loc-AVS2; d3=loc-AVS3; d4=loc-AVS4;
    D1=sqrt((d1(1,1))^2+(d1(2,1))^2);
    D2=sqrt((d2(1,1))^2+(d2(2,1))^2);
    D3=sqrt((d3(1,1))^2+(d3(2,1))^2);
    D4=sqrt((d4(1,1))^2+(d4(2,1))^2);
    T1=D1/343; T2=D2/343; T3=D3/343; T4=D4/343;
    Delay1=round(fs*T1); Delay2=round(fs*T2); Delay3=round(fs*T3); Delay4=round(fs*T4); %%Delay in samples
    s1=Signal(Delay1:Delay1+duration*fs);
    s2=Signal(Delay2:Delay2+duration*fs);
    s3=Signal(Delay3:Delay3+duration*fs);
    s4=Signal(Delay4:Delay4+duration*fs);
    s1=s1(1:duration*fs);
    s2=s2(1:duration*fs);
    s3=s3(1:duration*fs);
    s4=s4(1:duration*fs);
    t=(1:1:duration*fs);
    
    
    figure(2)
    subplot(411); 
    plot(t,s1);axis tight;
    title('Pulse at Antenna 1');xlabel('Time (s)');ylabel('Magnitude (V)');
    subplot(412);
    plot(t,s2);axis tight;
    title('Pulse at Antenna 2');xlabel('Time (s)');ylabel('Magnitude (V)');
    subplot(413);
    plot(t,s3);axis tight;
    title('Pulse at Antenna 3');xlabel('Time (s)');ylabel('Magnitude (V)');
    subplot(414);
    plot(t,s4);axis tight;
    title('Pulse at Antenna 4');xlabel('Time (s)');ylabel('Magnitude (V)');
    
    y=[s1; s2; s3; s4];
    
  
end

