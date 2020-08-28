Velocidade = 0:(5/18):(250/9);                                                             
TempoReacao = 0:(1/50):2;                        
Distancia = round(TempoReacao .* Velocidade);

plot3(Velocidade,TempoReacao,Distancia)
view(-20, 20)
title('Variação da distância de reação em função da velocidade e do tempo de reação');
xlabel('Velocidade (m/s)')
ylabel('Tempo de reação (s)')
zlabel('Distância de travagem (m)')