function [ Signalout ] = Time2Freq( Signal, Length, Fs )
    %%deze functie zet tijdsomein signaal om naar frequentiedomein en plot
    %%het eventueel

    A=Signal.';
    B=fft(A);
    B=B(1:Length/2,:);
    f=[0:2/Length:1-2/Length]*Fs/2;

%     figure(1);
%     subplot(411); 
%     plot(f,abs(B(:,1)));axis tight;
%     title('Frequency response at AVS 1');xlabel('Frequency (Hz)');ylabel('Magnitude');
%     subplot(412);
%     plot(f,abs(B(:,2)));axis tight;
%     title('Frequency response at AVS 2');xlabel('Frequency (Hz)');ylabel('Magnitude');
%     subplot(413);
%     plot(f,abs(B(:,3)));axis tight;
%     title('Frequency response at AVS 3');xlabel('Frequency (Hz)');ylabel('Magnitude');
%     subplot(414);
%     plot(f,abs(B(:,4)));axis tight;
%     title('Frequency response at AVS 4');xlabel('Frequency (Hz)');ylabel('Magnitude');
        
    Signalout=B; 
end

