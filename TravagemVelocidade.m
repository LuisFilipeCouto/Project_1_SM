Velocidade = 0:(250/9);
Coeficiente = 0.50;
Distancia = round((Velocidade.^2)./(2 * Coeficiente * 9.8));

plot(Velocidade,Distancia);
title('Varia��o da dist�ncia de travagem em fun��o da velocidade');
ylabel('Dist�ncia de travagem (m)')
xlabel('Velocidade (m/s)');