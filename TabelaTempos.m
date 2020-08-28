function T = TabelaTempos()
    
    Idade = {'18-30','30-50','50-70','70-90'}; %%%% Intervalos de idade do condutor em anos
    Tempo = [0.7 0.9 1.1 2];  %%% Tempo de reação para cada intervalo de idade em segundos
    T = table;
    T.Idade = Idade';
    T.TempoReacao = Tempo';
end
    

