function y = MUSICfunction( Signal, Fc )
%Plotting the MVDR spectrum
    %% initialisatie wavelength=2*d -> laagste freq=3432 ?

    wavelength = 343/Fc; %meter  soundspeed/Fc_min
    k=2*pi/wavelength;
    d=0.05; %d=SoundSpeed/(Fc*2);
    N=4;
    r=1;
    Pmusic=zeros(1,180);
    [~, K] = size(Signal);
    R=Signal*Signal'/K;
    [Q ,D]=eig(R); %Compute eigendecomposition of covariance matrix
    [~,I]=sort(diag(D),1,'descend'); %Find r largest eigenvalues
    Q=Q (:,I); %Sort the eigenvectors to put signal eigenvectors first
    Qs=Q (:,1:r); %Get the signal eigenvectors
    Qn=Q(:,r+1:N); %Get the noise eigenvectors

    %% Scanning
for ang=1:180
       
    A=[1; exp(1i*k*1*d*cos(ang*2*pi/360)); exp(1i*k*2*d*cos(ang*2*pi/360)); exp(1i*k*3*d*cos(ang*2*pi/360))];
    AT=ctranspose(A);
    QnT=ctranspose(Qn);
    Pmusic(ang)=1/(AT*Qn*QnT*A);

end
    %% Plotting
    Pmusic = abs(Pmusic)/max(abs(Pmusic));
    phi=(1:1:180)*2*pi/360;
    polarplot(phi,real(Pmusic));
    y=abs(Pmusic);
end