#!/usr/bin/octave -qf

printf("Dla najprostszej macierzy jednostkowej, wszystkie metody zwracają prawidłowy, dokładny wynik:\n");
A = [1,0;0,1]
b = transpose([1,1])
blad(A, b, 0);
blad(A, b, 1);
blad(A, b, 2);
printf("\n");


printf("Dla macierzy z zerami na przekątnej, metoda bez wyboru elementu głównego w oczywisty sposób zwraca błąd ze względu na dzielenie przez zero:\n");
A = [0,1;1,0]
b = transpose([1,1])
blad(A, b, 0);

printf("\n");
printf("Pozostałe metody zwracają prawidłowy wynik:\n");
blad(A, b, 1);
blad(A, b, 2);
printf("\n");


printf("Dla macierzy dobrze uwarunkowanej, metoda bez wyboru elementu głównego może dać wynik z dużym błędem jeśli element główny będzie bliski zeru:\n");
A = [0.000000001,1;1,1]
b = transpose([1,2])
blad(A, b, 0);

printf("\n");
printf("Pozostałe metody zwracają wynik ze znacznie mniejszym błędem względnym:\n");
blad(A, b, 1);
blad(A, b, 2);
printf("\n");




