Velocidade = 0:(5/18):(250/9);                                                             
TempoReacao = 0:(1/50):2;                        
Distancia = round(TempoReacao .* Velocidade);

plot3(Velocidade,TempoReacao,Distancia)
view(-20, 20)
title('Varia��o da dist�ncia de rea��o em fun��o da velocidade e do tempo de rea��o');
xlabel('Velocidade (m/s)')
ylabel('Tempo de rea��o (s)')
zlabel('Dist�ncia de travagem (m)')