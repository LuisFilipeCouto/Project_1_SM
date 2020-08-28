Velocidade = 0:(5/18):(250/9);                                                             
Coeficiente = 0:(1/100):1;                        
Distancia = round((Velocidade.^2)./(2.* Coeficiente .* 9.8));

plot3(Velocidade,Coeficiente,Distancia)
view(-20, 20)
title('Variação da distância de travagem em função da velocidade e do coeficiente de atrito cinético');
xlabel('Velocidade (m/s)')
ylabel('Coeficiente de atrito cinetico')
zlabel('Distância de travagem (m)')