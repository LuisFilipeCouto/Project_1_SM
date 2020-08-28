clear all;
close all;

Tabela1 = TabelaTempos() %%Esta tabela mostra ao utilizador o tempo de rea��o consoante a idade do condutor
Tabela2 = TabelaValores()  %% Esta tabela mostra ao utilizador qual o tipo de pavimento da estrada e qual as condi�oes disponiveis, bem como os respetivos coeficientes de fric��o

prompt = 'Qual � o tipo de pavimento da estrada? ';
a = input(prompt,'s');

prompt = 'Quais as condi��es do pavimento? ';
b = input(prompt,'s'); 

prompt = 'Qual a idade do condutor em anos? ';
c = input(prompt);

prompt = 'Qual a velocidade do veiculo em km/h? ';
d = (input(prompt)*1000)/3600; %%%% Como estamos a falar de veiculos, � mais pratico para o utilizador a velocidade estar em Km/h mas para os c�lculos � necess�rio que a velocidade esteja em metros 



if strcmp(a, 'Betao') || strcmp(a, 'betao') || strcmp(a, 'Asfalto') || strcmp(a, 'asfalto') || strcmp(a, 'Terra')|| strcmp(a, 'terra')  %%% Verificar se pavimento � permitido
if strcmp(b, 'Seco') || strcmp(b, 'seco') || strcmp(b, 'Molhado') || strcmp(b, 'molhado') || strcmp(b, 'Gelo')|| strcmp(b, 'gelo') || strcmp(b, 'Neve')|| strcmp(b, 'neve')  %%%% Verficar se condi�ao do pavimento � permitida
    %%%%%%%%%%%%%%%%%%%%%% PAVIMENTO � BETAO
 if strcmp(a, 'Betao') || strcmp(a, 'betao')  
    if strcmp(b, 'Seco') || strcmp(b, 'seco')  %%% DISTANCIA PARA BETAO SECO
        if (18<=c) && (c<30)
            DistanciaTotal = DistanciaTravagem(d,0.75) + DistanciaReacao(d,0.7);
            fprintf('A distancia de rea��o � %d m\n', DistanciaReacao(d,0.7))
            fprintf('A distancia de travagem � %d m\n', DistanciaTravagem(d,0.75))
            fprintf('A distancia total � %d m\n', DistanciaTotal)
        end
        if (30<=c) && (c<50)
            DistanciaTotal = DistanciaTravagem(d,0.75) + DistanciaReacao(d,0.9);
            fprintf('A distancia de rea��o � %d m\n', DistanciaReacao(d,0.9))
            fprintf('A distancia de travagem � %d m\n', DistanciaTravagem(d,0.75))
            fprintf('A distancia total � %d m\n', DistanciaTotal)
        end
        if (50<=c) && (c<70)
            DistanciaTotal = DistanciaTravagem(d,0.75) + DistanciaReacao(d,1.1);
            fprintf('A distancia de rea��o � %d m\n', DistanciaReacao(d,1.1))
            fprintf('A distancia de travagem � %d m\n', DistanciaTravagem(d,0.75))
            fprintf('A distancia total � %d m\n', DistanciaTotal)
        end
        if (70<=c) && (c<=90)
            DistanciaTotal = DistanciaTravagem(d,0.75) + DistanciaReacao(d,2);
            fprintf('A distancia de rea��o � %d m\n', DistanciaReacao(d,2))
            fprintf('A distancia de travagem � %d m\n', DistanciaTravagem(d,0.75))
            fprintf('A distancia total � %d m\n', DistanciaTotal)
        end
        if (90<c)
            fprintf('Provavelmente j� n�o devia conduzir!\n');
        end
    end   
   if strcmp(b, 'Molhado') || strcmp(b, 'molhado')   %%%% DISTANCIA PARA BETAO MOLHADO
        if (18<=c) && (c<30)
            DistanciaTotal = DistanciaTravagem(d,0.45) + DistanciaReacao(d,0.7);
            fprintf('A distancia de rea��o � %d m\n', DistanciaReacao(d,0.7))
            fprintf('A distancia de travagem � %d m\n', DistanciaTravagem(d,0.45))
            fprintf('A distancia total � %d m\n', DistanciaTotal)
        end
        if (30<=c) && (c<50)
            DistanciaTotal = DistanciaTravagem(d,0.45) + DistanciaReacao(d,0.9);
            fprintf('A distancia de rea��o � %d m\n', DistanciaReacao(d,0.9))
            fprintf('A distancia de travagem � %d m\n', DistanciaTravagem(d,0.45))
            fprintf('A distancia total � %d m\n', DistanciaTotal)
        end
        if (50<=c) && (c<70)
            DistanciaTotal = DistanciaTravagem(d,0.45) + DistanciaReacao(d,1.1);
            fprintf('A distancia de rea��o � %d m\n', DistanciaReacao(d,1.1))
            fprintf('A distancia de travagem � %d m\n', DistanciaTravagem(d,0.45))
            fprintf('A distancia total � %d m\n', DistanciaTotal)
        end
        if (70<=c) && (c<=90)
            DistanciaTotal = DistanciaTravagem(d,0.45) + DistanciaReacao(d,2);
            fprintf('A distancia de rea��o � %d m\n', DistanciaReacao(d,2))
            fprintf('A distancia de travagem � %d m\n', DistanciaTravagem(d,0.45))
            fprintf('A distancia total � %d m\n', DistanciaTotal)
        end
        if (90<c)
            fprintf('Provavelmente j� n�o devia conduzir!\n');
        end
   end
   
   if strcmp(b, 'Gelo') || strcmp(b, 'gelo')   %%%% DISTANCIA PARA BETAO COM GELO
        if (18<=c) && (c<30)
            DistanciaTotal = DistanciaTravagem(d,0.07) + DistanciaReacao(d,0.7);
            fprintf('A distancia de rea��o � %d m\n', DistanciaReacao(d,0.7))
            fprintf('A distancia de travagem � %d m\n', DistanciaTravagem(d,0.07))
            fprintf('A distancia total � %d m\n', DistanciaTotal)
        end
        if (30<=c) && (c<50)
            DistanciaTotal = DistanciaTravagem(d,0.07) + DistanciaReacao(d,0.9);
            fprintf('A distancia de rea��o � %d m\n', DistanciaReacao(d,0.9))
            fprintf('A distancia de travagem � %d m\n', DistanciaTravagem(d,0.07))
            fprintf('A distancia total � %d m\n', DistanciaTotal)
        end
        if (50<=c) && (c<70)
            DistanciaTotal = DistanciaTravagem(d,0.07) + DistanciaReacao(d,1.1);
            fprintf('A distancia de rea��o � %d m\n', DistanciaReacao(d,1.1))
            fprintf('A distancia de travagem � %d m\n', DistanciaTravagem(d,0.07))
            fprintf('A distancia total � %d m\n', DistanciaTotal)
        end
        if (70<=c) && (c<=90)
            DistanciaTotal = DistanciaTravagem(d,0.07) + DistanciaReacao(d,2);
            fprintf('A distancia de rea��o � %d m\n', DistanciaReacao(d,2))
            fprintf('A distancia de travagem � %d m\n', DistanciaTravagem(d,0.07))
            fprintf('A distancia total � %d m\n', DistanciaTotal)
        end
        if (90<c)
            fprintf('Provavelmente j� n�o devia conduzir!\n');
        end
   end
        
   if strcmp(b, 'Neve') || strcmp(b, 'neve')   %%%% DISTANCIA PARA BETAO COM NEVE
        if (18<=c) && (c<30)
            DistanciaTotal = DistanciaTravagem(d,0.15) + DistanciaReacao(d,0.7);
            fprintf('A distancia de rea��o � %d m\n', DistanciaReacao(d,0.7))
            fprintf('A distancia de travagem � %d m\n', DistanciaTravagem(d,0.15))
            fprintf('A distancia total � %d m\n', DistanciaTotal)
        end
        if (30<=c) && (c<50)
            DistanciaTotal = DistanciaTravagem(d,0.15) + DistanciaReacao(d,0.9);
            fprintf('A distancia de rea��o � %d m\n', DistanciaReacao(d,0.9))
            fprintf('A distancia de travagem � %d m\n', DistanciaTravagem(d,0.15))
            fprintf('A distancia total � %d m\n', DistanciaTotal)
        end
        if (50<=c) && (c<70)
            DistanciaTotal = DistanciaTravagem(d,0.15) + DistanciaReacao(d,1.1);
            fprintf('A distancia de rea��o � %d m\n', DistanciaReacao(d,1.1))
            fprintf('A distancia de travagem � %d m\n', DistanciaTravagem(d,0.15))
            fprintf('A distancia total � %d m\n', DistanciaTotal)
        end
        if (70<=c) && (c<=90)
            DistanciaTotal = DistanciaTravagem(d,0.15) + DistanciaReacao(d,2);
            fprintf('A distancia de rea��o � %d m\n', DistanciaReacao(d,2))
            fprintf('A distancia de travagem � %d m\n', DistanciaTravagem(d,0.15))
            fprintf('A distancia total � %d m\n', DistanciaTotal)
        end
        if (90<c)
            fprintf('Provavelmente j� n�o devia conduzir!\n');
        end
   end
end



%%%%%%%%%%%%%%%%%%%%%%%%%% PAVIMENTO � ASFALTO
if strcmp(a, 'Asfalto') || strcmp(a, 'asfalto')  
    if strcmp(b, 'Seco') || strcmp(b, 'seco')  %%% DISTANCIA PARA ASFALTO SECO
       if (18<=c) && (c<30)
            DistanciaTotal = DistanciaTravagem(d,0.70) + DistanciaReacao(d,0.7);
            fprintf('A distancia de rea��o � %d m\n', DistanciaReacao(d,0.7))
            fprintf('A distancia de travagem � %d m\n', DistanciaTravagem(d,0.70))
            fprintf('A distancia total � %d m\n', DistanciaTotal)
        end
        if (30<=c) && (c<50)
            DistanciaTotal = DistanciaTravagem(d,0.70) + DistanciaReacao(d,0.9);
            fprintf('A distancia de rea��o � %d m\n', DistanciaReacao(d,0.9))
            fprintf('A distancia de travagem � %d m\n', DistanciaTravagem(d,0.70))
            fprintf('A distancia total � %d m\n', DistanciaTotal)
        end
        if (50<=c) && (c<70)
            DistanciaTotal = DistanciaTravagem(d,0.70) + DistanciaReacao(d,1.1);
            fprintf('A distancia de rea��o � %d m\n', DistanciaReacao(d,1.1))
            fprintf('A distancia de travagem � %d m\n', DistanciaTravagem(d,0.70))
            fprintf('A distancia total � %d m\n', DistanciaTotal)
        end
        if (70<=c) && (c<=90)
            DistanciaTotal = DistanciaTravagem(d,0.70) + DistanciaReacao(d,2);
            fprintf('A distancia de rea��o � %d m\n', DistanciaReacao(d,2))
            fprintf('A distancia de travagem � %d m\n', DistanciaTravagem(d,0.70))
            fprintf('A distancia total � %d m\n', DistanciaTotal)
        end
        if (90<c)
            fprintf('Provavelmente j� n�o devia conduzir!\n');
        end
    end
    
     if strcmp(b, 'Molhado') || strcmp(b, 'molhado')  %%% DISTANCIA PARA ASFALTO MOLHADO
       if (18<=c) && (c<30)
            DistanciaTotal = DistanciaTravagem(d,0.25) + DistanciaReacao(d,0.7);
            fprintf('A distancia de rea��o � %d m\n', DistanciaReacao(d,0.7))
            fprintf('A distancia de travagem � %d m\n', DistanciaTravagem(d,0.25))
            fprintf('A distancia total � %d m\n', DistanciaTotal)
        end
        if (30<=c) && (c<50)
            DistanciaTotal = DistanciaTravagem(d,0.25) + DistanciaReacao(d,0.9);
            fprintf('A distancia de rea��o � %d m\n', DistanciaReacao(d,0.9))
            fprintf('A distancia de travagem � %d m\n', DistanciaTravagem(d,0.25))
            fprintf('A distancia total � %d m\n', DistanciaTotal)
        end
        if (50<=c) && (c<70)
            DistanciaTotal = DistanciaTravagem(d,0.25) + DistanciaReacao(d,1.1);
            fprintf('A distancia de rea��o � %d m\n', DistanciaReacao(d,1.1))
            fprintf('A distancia de travagem � %d m\n', DistanciaTravagem(d,0.25))
            fprintf('A distancia total � %d m\n', DistanciaTotal)
        end
        if (70<=c) && (c<=90)
            DistanciaTotal = DistanciaTravagem(d,0.25) + DistanciaReacao(d,2);
            fprintf('A distancia de rea��o � %d m\n', DistanciaReacao(d,2))
            fprintf('A distancia de travagem � %d m\n', DistanciaTravagem(d,0.25))
            fprintf('A distancia total � %d m\n', DistanciaTotal)
        end
        if (90<c)
            fprintf('Provavelmente j� n�o devia conduzir!\n');
        end
    end
    
    if strcmp(b, 'Gelo') || strcmp(b, 'gelo')  %%% DISTANCIA PARA ASFALTO COM GELO
       if (18<=c) && (c<30)
            DistanciaTotal = DistanciaTravagem(d,0.07) + DistanciaReacao(d,0.7);
            fprintf('A distancia de rea��o � %d m\n', DistanciaReacao(d,0.7))
            fprintf('A distancia de travagem � %d m\n', DistanciaTravagem(d,0.07))
            fprintf('A distancia total � %d m\n', DistanciaTotal)
        end
        if (30<=c) && (c<50)
            DistanciaTotal = DistanciaTravagem(d,0.07) + DistanciaReacao(d,0.9);
            fprintf('A distancia de rea��o � %d m\n', DistanciaReacao(d,0.9))
            fprintf('A distancia de travagem � %d m\n', DistanciaTravagem(d,0.07))
            fprintf('A distancia total � %d m\n', DistanciaTotal)
        end
        if (50<=c) && (c<70)
            DistanciaTotal = DistanciaTravagem(d,0.07) + DistanciaReacao(d,1.1);
            fprintf('A distancia de rea��o � %d m\n', DistanciaReacao(d,1.1))
            fprintf('A distancia de travagem � %d m\n', DistanciaTravagem(d,0.07))
            fprintf('A distancia total � %d m\n', DistanciaTotal)
        end
        if (70<=c) && (c<=90)
            DistanciaTotal = DistanciaTravagem(d,0.07) + DistanciaReacao(d,2);
            fprintf('A distancia de rea��o � %d m\n', DistanciaReacao(d,2))
            fprintf('A distancia de travagem � %d m\n', DistanciaTravagem(d,0.07))
            fprintf('A distancia total � %d m\n', DistanciaTotal)
        end
        if (90<c)
            fprintf('Provavelmente j� n�o devia conduzir!\n');
        end
    end
    
    
    if strcmp(b, 'Neve') || strcmp(b, 'neve')  %%% DISTANCIA PARA ASFALTO COM NEVE
       if (18<=c) && (c<30)
            DistanciaTotal = DistanciaTravagem(d,0.15) + DistanciaReacao(d,0.7);
            fprintf('A distancia de rea��o � %d m\n', DistanciaReacao(d,0.7))
            fprintf('A distancia de travagem � %d m\n', DistanciaTravagem(d,0.15))
            fprintf('A distancia total � %d m\n', DistanciaTotal)
        end
        if (30<=c) && (c<50)
            DistanciaTotal = DistanciaTravagem(d,0.15) + DistanciaReacao(d,0.9);
            fprintf('A distancia de rea��o � %d m\n', DistanciaReacao(d,0.9))
            fprintf('A distancia de travagem � %d m\n', DistanciaTravagem(d,0.15))
            fprintf('A distancia total � %d m\n', DistanciaTotal)
        end
        if (50<=c) && (c<70)
            DistanciaTotal = DistanciaTravagem(d,0.15) + DistanciaReacao(d,1.1);
            fprintf('A distancia de rea��o � %d m\n', DistanciaReacao(d,1.1))
            fprintf('A distancia de travagem � %d m\n', DistanciaTravagem(d,0.15))
            fprintf('A distancia total � %d m\n', DistanciaTotal)
        end
        if (70<=c) && (c<=90)
            DistanciaTotal = DistanciaTravagem(d,0.15) + DistanciaReacao(d,2);
            fprintf('A distancia de rea��o � %d m\n', DistanciaReacao(d,2))
            fprintf('A distancia de travagem � %d m\n', DistanciaTravagem(d,0.15))
            fprintf('A distancia total � %d m\n', DistanciaTotal)
        end
        if (90<c)
            fprintf('Provavelmente j� n�o devia conduzir!\n');
        end
    end
end

    
    %%%%%%%%%%%%%%%%%%%%%% PAVIMENTO � TERRA
if strcmp(a, 'Terra') || strcmp(a, 'terra') 
     if strcmp(b, 'Seco') || strcmp(b, 'seco')  %%% DISTANCIA PARA TERRA SECA
         if (18<=c) && (c<30)
            DistanciaTotal = DistanciaTravagem(d,0.65) + DistanciaReacao(d,0.7);
            fprintf('A distancia de rea��o � %d m\n', DistanciaReacao(d,0.7))
            fprintf('A distancia de travagem � %d m\n', DistanciaTravagem(d,0.65))
            fprintf('A distancia total � %d m\n', DistanciaTotal)
        end
        if (30<=c) && (c<50)
            DistanciaTotal = DistanciaTravagem(d,0.65) + DistanciaReacao(d,0.9);
            fprintf('A distancia de rea��o � %d m\n', DistanciaReacao(d,0.9))
            fprintf('A distancia de travagem � %d m\n', DistanciaTravagem(d,0.65))
            fprintf('A distancia total � %d m\n', DistanciaTotal)
        end
        if (50<=c) && (c<70)
            DistanciaTotal = DistanciaTravagem(d,0.65) + DistanciaReacao(d,1.1);
            fprintf('A distancia de rea��o � %d m\n', DistanciaReacao(d,1.1))
            fprintf('A distancia de travagem � %d m\n', DistanciaTravagem(d,0.65))
            fprintf('A distancia total � %d m\n', DistanciaTotal)
        end
        if (70<=c) && (c<=90)
            DistanciaTotal = DistanciaTravagem(d,0.65) + DistanciaReacao(d,2);
            fprintf('A distancia de rea��o � %d m\n', DistanciaReacao(d,2))
            fprintf('A distancia de travagem � %d m\n', DistanciaTravagem(d,0.65))
            fprintf('A distancia total � %d m\n', DistanciaTotal)
        end
        if (90<c)
            fprintf('Provavelmente j� n�o devia conduzir!\n');
        end
     end  
     
      if strcmp(b, 'Molhado') || strcmp(b, 'molhado')  %%% DISTANCIA PARA TERRA MOLHADA
         if (18<=c) && (c<30)
            DistanciaTotal = DistanciaTravagem(d,0.55) + DistanciaReacao(d,0.7);
            fprintf('A distancia de rea��o � %d m\n', DistanciaReacao(d,0.7))
            fprintf('A distancia de travagem � %d m\n', DistanciaTravagem(d,0.55))
            fprintf('A distancia total � %d m\n', DistanciaTotal)
        end
        if (30<=c) && (c<50)
            DistanciaTotal = DistanciaTravagem(d,0.55) + DistanciaReacao(d,0.9);
            fprintf('A distancia de rea��o � %d m\n', DistanciaReacao(d,0.9))
            fprintf('A distancia de travagem � %d m\n', DistanciaTravagem(d,0.55))
            fprintf('A distancia total � %d m\n', DistanciaTotal)
        end
        if (50<=c) && (c<70)
            DistanciaTotal = DistanciaTravagem(d,0.55) + DistanciaReacao(d,1.1);
            fprintf('A distancia de rea��o � %d m\n', DistanciaReacao(d,1.1))
            fprintf('A distancia de travagem � %d m\n', DistanciaTravagem(d,0.55))
            fprintf('A distancia total � %d m\n', DistanciaTotal)
        end
        if (70<=c) && (c<=90)
            DistanciaTotal = DistanciaTravagem(d,0.55) + DistanciaReacao(d,2);
            fprintf('A distancia de rea��o � %d m\n', DistanciaReacao(d,2))
            fprintf('A distancia de travagem � %d m\n', DistanciaTravagem(d,0.55))
            fprintf('A distancia total � %d m\n', DistanciaTotal)
        end
        if (90<c)
            fprintf('Provavelmente j� n�o devia conduzir!\n');
        end
     end  
     
     if strcmp(b, 'Gelo') || strcmp(b, 'gelo')  %%% DISTANCIA PARA TERRA COM GELO
         if (18<=c) && (c<30)
            DistanciaTotal = DistanciaTravagem(d,0.07) + DistanciaReacao(d,0.7);
            fprintf('A distancia de rea��o � %d m\n', DistanciaReacao(d,0.7))
            fprintf('A distancia de travagem � %d m\n', DistanciaTravagem(d,0.07))
            fprintf('A distancia total � %d m\n', DistanciaTotal)
        end
        if (30<=c) && (c<50)
            DistanciaTotal = DistanciaTravagem(d,0.07) + DistanciaReacao(d,0.9);
            fprintf('A distancia de rea��o � %d m\n', DistanciaReacao(d,0.9))
            fprintf('A distancia de travagem � %d m\n', DistanciaTravagem(d,0.07))
            fprintf('A distancia total � %d m\n', DistanciaTotal)
        end
        if (50<=c) && (c<70)
            DistanciaTotal = DistanciaTravagem(d,0.07) + DistanciaReacao(d,1.1);
            fprintf('A distancia de rea��o � %d m\n', DistanciaReacao(d,1.1))
            fprintf('A distancia de travagem � %d m\n', DistanciaTravagem(d,0.07))
            fprintf('A distancia total � %d m\n', DistanciaTotal)
        end
        if (70<=c) && (c<=90)
            DistanciaTotal = DistanciaTravagem(d,0.55) + DistanciaReacao(d,2);
            fprintf('A distancia de rea��o � %d m\n', DistanciaReacao(d,2))
            fprintf('A distancia de travagem � %d m\n', DistanciaTravagem(d,0.07))
            fprintf('A distancia total � %d m\n', DistanciaTotal)
        end
        if (90<c)
            fprintf('Provavelmente j� n�o devia conduzir!\n');
        end
     end  
     
     if strcmp(b, 'Neve') || strcmp(b, 'neve')  %%% DISTANCIA PARA TERRA COM NEVE
         if (18<=c) && (c<30)
            DistanciaTotal = DistanciaTravagem(d,0.15) + DistanciaReacao(d,0.7);
            fprintf('A distancia de rea��o � %d m\n', DistanciaReacao(d,0.7))
            fprintf('A distancia de travagem � %d m\n', DistanciaTravagem(d,0.15))
            fprintf('A distancia total � %d m\n', DistanciaTotal)
        end
        if (30<=c) && (c<50)
            DistanciaTotal = DistanciaTravagem(d,0.15) + DistanciaReacao(d,0.9);
            fprintf('A distancia de rea��o � %d m\n', DistanciaReacao(d,0.9))
            fprintf('A distancia de travagem � %d m\n', DistanciaTravagem(d,0.15))
            fprintf('A distancia total � %d m\n', DistanciaTotal)
        end
        if (50<=c) && (c<70)
            DistanciaTotal = DistanciaTravagem(d,0.15) + DistanciaReacao(d,1.1);
            fprintf('A distancia de rea��o � %d m\n', DistanciaReacao(d,1.1))
            fprintf('A distancia de travagem � %d m\n', DistanciaTravagem(d,0.15))
            fprintf('A distancia total � %d m\n', DistanciaTotal)
        end
        if (70<=c) && (c<=90)
            DistanciaTotal = DistanciaTravagem(d,0.15) + DistanciaReacao(d,2);
            fprintf('A distancia de rea��o � %d m\n', DistanciaReacao(d,2))
            fprintf('A distancia de travagem � %d m\n', DistanciaTravagem(d,0.15))
            fprintf('A distancia total � %d m\n', DistanciaTotal)
        end
        if (90<c)
            fprintf('Provavelmente j� n�o devia conduzir!\n');
        end
     end  
end
%%%%%%CONDI�OES QUE TEM QUE SE VERIFICAR PARA REALIZAR OS CALCULOS

if c < 18
    fprintf('A pessoa tem de ter mais de 18 anos para conduzir!\n') %% O condutor n�o pode ter menos de 18 anos
end

if d <=0
    fprintf('O carro est� parado!\n')  %%%% Para existir distancia de rea��o e travagem, o carro tem de estar em movimento
end


else
   fprintf('Escolha uma condi��o do pavimento disponivel!\n') 
end
else   
     fprintf('Escolha um pavimento disponivel!\n')
end



     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     


    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
 
       
   



            





