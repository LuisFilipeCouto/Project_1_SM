Velocidade = (250/9);                               
TempoReacao = 0:(1/50):2;                                                      
Distancia = round(Velocidade .* TempoReacao);

plot(TempoReacao,Distancia);
title('Variação da distância de reacao em função do tempo de reação');
ylabel('Distância de reação(m)');
xlabel('Tempo de reação (s)');