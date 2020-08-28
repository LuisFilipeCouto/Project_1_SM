close all;
clc;
Velocidade = 0:(5/18):(250/9);                               
TempoReacao = 0:(1/50):2;                                
Coeficiente = 0:(1/100):1;                        
Distancia = round(Velocidade .* TempoReacao) + round((Velocidade.^2)./(2.* Coeficiente .* 9.8));

scatter3(Velocidade,TempoReacao,Coeficiente,100,Distancia,'filled')    
ax = gca;
ax.XDir = 'reverse';
view(10, 30)
xlabel('Velocidade (m/s)')
ylabel('Tempo de reaçao (s)')
zlabel('Coeficiente de atrito cinetico')
cb = colorbar;                                     
cb.Label.String = 'Distância de paragem (m)';








