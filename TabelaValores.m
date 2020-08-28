function T = TabelaValores()

CondicoesDaEstrada = {'Seco';'Molhado';'Neve';'Gelo'};   %% Condições em que a estrada se encontra
Asfalto = [0.70;0.25;0.15;0.07];    %% Valores do coeficiente de fricção entre o asfalto e os pneus do carro em cada condição
Betao = [0.75;0.45;0.15;0.07];    %% Valores do coeficiente de fricção entre o betão e os pneus do carro em cada condição
Terra = [0.65;0.50;0.15;0.07];   %% Valores do coeficiente de fricção entre a estrada de terra e os pneus do carro em cada condição
T = table(Asfalto,Betao,Terra,'RowNames',CondicoesDaEstrada);
end

