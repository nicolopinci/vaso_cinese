function [ritorno] = vaso_cinese(densita, larg_massima, strozzatura)
% Funzione che disegna un vaso cinese
%   La funzione vaso_cinese richiede in input la
%   densità delle linee (ovvero il passo tra un "livello" e l'altro della
%   struttura ad elica), la larghezza massima del vaso e la dimensione
%   della strozzatura.
%   Se tutto è andato a buon fine la funzione ritorna 0 (e disegna il vaso
%   correttamente).


phi=0; % fase iniziale
f0=10; % frequenza

fc=1000; % frequenza di campionamento
T=1/fc;	% passo temporale fra i campioni

for k=1:densita;
	t(k)=(k-1)*T;
end

s=larg_massima*exp(j*(2*pi*f0*t+phi));


for k=1:densita;
    s(k)=s(k)*(strozzatura+abs(sin(1.17*pi*k/densita))); 
    % il valore assoluto serve per non far diventare il vaso negativo (potrebbe crearsi una strozzatura, tra l'altro!)
end;

figure(1)
comet3(real(s), imag(s), t) % o plot3 per farlo in un colpo solo

ritorno = 0; % Tutto è andato bene
end

