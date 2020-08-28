Velocidade = (250/9);
Coeficiente = 0:(1/100):1;
Distancia = round((Velocidade^2)./(2 .* Coeficiente .* 9.8));
plot(Coeficiente,Distancia);
title('Variação da distância de travagem em função do coeficiente de atrito cinético');
xlabel('Coeficiente de atrito cinético');
ylabel('Distância travagem (m)')
set(gca,'Xdir','reverse')
axis([0 1 0 1000]);