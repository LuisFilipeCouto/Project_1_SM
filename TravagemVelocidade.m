Velocidade = 0:(250/9);
Coeficiente = 0.50;
Distancia = round((Velocidade.^2)./(2 * Coeficiente * 9.8));

plot(Velocidade,Distancia);
title('Variação da distância de travagem em função da velocidade');
ylabel('Distância de travagem (m)')
xlabel('Velocidade (m/s)');