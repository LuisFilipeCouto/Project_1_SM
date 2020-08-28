function T = TabelaValores()

CondicoesDaEstrada = {'Seco';'Molhado';'Neve';'Gelo'};   %% Condi��es em que a estrada se encontra
Asfalto = [0.70;0.25;0.15;0.07];    %% Valores do coeficiente de fric��o entre o asfalto e os pneus do carro em cada condi��o
Betao = [0.75;0.45;0.15;0.07];    %% Valores do coeficiente de fric��o entre o bet�o e os pneus do carro em cada condi��o
Terra = [0.65;0.50;0.15;0.07];   %% Valores do coeficiente de fric��o entre a estrada de terra e os pneus do carro em cada condi��o
T = table(Asfalto,Betao,Terra,'RowNames',CondicoesDaEstrada);
end

