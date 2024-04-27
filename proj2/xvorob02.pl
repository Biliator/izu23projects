% Zadani c. 38:
% Napiste program resici ukol dany predikatem u38(LIN), kde LIN je vstupni 
% celociselny seznam. Predikat je pravdivy (ma hodnotu true), pokud 
% se v seznamu LIN opakuje nejake kladne liche cislo, jinak je predikat 
% nepravdivy (ma hodnotu false).

% Testovaci predikaty:
u38_1:- u38([4,-3,1,8,3,-8,0]).				% false.
u38_2:- u38([4,-3,3,8,3,8,0]).				% true.
u38_3:- u38([]).					% false.
u38_r:- write('Zadej LIN: '),read(LIN),u38(LIN).

% Reseni:
u38(LIN):- fce1(LIN).

fce1([]):-false.
fce1([H|T]):- H > 0, H // 2 =\= H / 2,fce2(H,T).
fce1([_|T]):-fce1(T).
fce2(H,[H2|T]):-H=\=H2,fce2(H,T).
fce2(H,[H2|_]):-H=:=H2.