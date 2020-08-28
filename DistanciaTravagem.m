function D = DistanciaTravagem(v,u) %% Tem como argumentos os valores da velocidade e do coeficiente de fricção
    
    a = 9.8;  %% Vamos considerar o valor da aceleração como sendo o valor da gravidade, ou seja,9,8m/s
    D = round((v^2)/(2*u*a));
   
end
