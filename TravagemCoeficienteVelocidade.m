Velocidade = 0:(5/18):(250/9);                                                             
Coeficiente = 0:(1/100):1;                        
Distancia = round((Velocidade.^2)./(2.* Coeficiente .* 9.8));

plot3(Velocidade,Coeficiente,Distancia)
view(-20, 20)
title('Varia��o da dist�ncia de travagem em fun��o da velocidade e do coeficiente de atrito cin�tico');
xlabel('Velocidade (m/s)')
ylabel('Coeficiente de atrito cinetico')
zlabel('Dist�ncia de travagem (m)')