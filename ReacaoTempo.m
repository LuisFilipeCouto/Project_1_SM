Velocidade = (250/9);                               
TempoReacao = 0:(1/50):2;                                                      
Distancia = round(Velocidade .* TempoReacao);

plot(TempoReacao,Distancia);
title('Varia��o da dist�ncia de reacao em fun��o do tempo de rea��o');
ylabel('Dist�ncia de rea��o(m)');
xlabel('Tempo de rea��o (s)');