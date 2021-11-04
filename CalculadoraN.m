clear all
clc

sumando1 = [25 40 16];
sumando2 = [21 23 11];
total = sumando1 + sumando2;

%idx = randi(4); % enteros aleatorios entre 1 y 4

for c = 1:length(sumando2)
    res = sumando1(c) + sumando2(c);
    opts.Interpreter = 'tex';
    % Include the desired Default answer
    opts.Default = '';
    % Use the TeX interpreter to format the question
    cadena = '¿Cual es el resultado de la siguiente operación? \n\n %i + %i \n';
    quest = sprintf(cadena,sumando1(c),sumando2(c));
    
    opc = {num2str(res),num2str(randi(100)),num2str(randi(100))};
    opc_rand = opc(randperm(length(opc)));
    
    answer = questdlg(quest,'Resuelve la siguiente suma:',opc_rand(1),opc_rand(2),opc_rand(3),opts);
    recuperar = str2double(answer);
    
    if recuperar == res
       disp('OK')
    else
        clc
    end
    
end






%%

fig = uifigure;
msg = 'Saving these changes will overwrite previous changes.';
title = 'Confirm Save';
selection = uiconfirm(fig,msg,title, ...
           'Options',{'Overwrite','Save as new','Cancel'}, ...
           'DefaultOption',1,'CancelOption',3);
       
%% Generar numeros aleatorios en un rango, exepto alguno
clear all
clc
% Generar M enteros aleatorios entre 1 y N.
% Excepto un entero arbitrario b; 1<= b<=N
N=100; b=15; M=2; %example data
%lista=setdiff(1:N,b);
lista=setdiff(1:N,b);
seleccion =lista(randperm(N-1,M))  %result