Velocidade = 0:(5/18):(250/9);                               
TempoReacao = 1.18;                                                       
Distancia = round(Velocidade .* TempoReacao);

plot(Velocidade,Distancia);
title('Varia��o da dist�ncia de reacao em fun��o da velocidade');
ylabel('Dist�ncia de rea��o(m)');
xlabel('Velocidade (m/s)');