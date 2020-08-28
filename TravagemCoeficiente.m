Velocidade = (250/9);
Coeficiente = 0:(1/100):1;
Distancia = round((Velocidade^2)./(2 .* Coeficiente .* 9.8));
plot(Coeficiente,Distancia);
title('Varia��o da dist�ncia de travagem em fun��o do coeficiente de atrito cin�tico');
xlabel('Coeficiente de atrito cin�tico');
ylabel('Dist�ncia travagem (m)')
set(gca,'Xdir','reverse')
axis([0 1 0 1000]);