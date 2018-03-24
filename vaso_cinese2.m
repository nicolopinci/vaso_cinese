
clear all
phi=0;   % fase iniziale
f0=100;  % frequenza (della "spirale")
f1=2;    % freq delle oscilazioni del bordo

fc=10000; % frequenza di campionamento
T=1/fc;	% passo temporale fra i campioni


t=0:T:1;

larghezza=sin(2*pi*f1*t)+2;
larghezza(fc/3:5*fc/6)=1;


s=larghezza.*exp(j*(2*pi*f0*t+phi));

figure(1)

comet3(real(s), imag(s), t)




