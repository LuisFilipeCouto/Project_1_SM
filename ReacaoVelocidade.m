Velocidade = 0:(5/18):(250/9);                               
TempoReacao = 1.18;                                                       
Distancia = round(Velocidade .* TempoReacao);

plot(Velocidade,Distancia);
title('Variação da distância de reacao em função da velocidade');
ylabel('Distância de reação(m)');
xlabel('Velocidade (m/s)');