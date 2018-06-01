#!/usr/bin/octave -qf
#format long g

printf("Dla najprostszej macierzy jednostkowej, wszystkie metody zwracają prawidłowy, dokładny wynik:\n");
A = [1,0;0,1]
b = transpose([1,1])
blad(A, b, 0);
blad(A, b, 1);
blad(A, b, 2);
printf("\n");


printf("Dla macierzy z zerem na przekątnej, metoda bez wyboru elementu głównego w oczywisty sposób zwraca błąd ze względu na dzielenie przez zero:\n");
A = [0,1;1,0]
b = transpose([1,1])
blad(A, b, 0);

printf("\n");
printf("Pozostałe metody zwracają prawidłowy wynik:\n");
blad(A, b, 1);
blad(A, b, 2);
printf("\n");


printf("Dla macierzy dobrze uwarunkowanej, metoda bez wyboru elementu głównego może dać wynik z dużym błędem\n");
printf("jeśli któryś z elementów głównych będzie bliski zeru:\n");
A = [0.000000001,1;1,1]
A_cond = cond(A)
b = transpose([1,2])
blad(A, b, 0);

printf("\n");
printf("Pozostałe metody zwracają wynik ze znacznie mniejszym błędem względnym:\n");
blad(A, b, 1);
blad(A, b, 2);
printf("\n");


printf("Wyniki we wszystkich trzech przypadkach wyświetlają się jako taka sama wartość, \n");
printf("ponieważ wyświetlanych jest jedynie kilka pierwszych cyfr rozwinięcia dziesiętnego.\n");
printf("wyświetlenie większej liczby cyfr możliwe jest poprzez 'odkomentowanie' drugiej linii pliku, \n");
printf("pogarsza to jednak czytelność wyników.\n");


printf("\n");
printf("Błąd wyniku może być duży dla każdego wariantu, jeśli macierz jest źle uwarunkowana\n");
A = [1,1;1,1.0000001]
A_cond = cond(A)
b = transpose([2,2.0001])
blad(A, b, 0);
blad(A, b, 1);
blad(A, b, 2);
printf("\n");


printf("\n");
printf("Podobnie wyglądać będzie sytuacja dla innych, źle uwarunkowanych macierzy, np. macierzy hilberta:\n");
A = hilb(6)
A_cond = cond(A)
b = transpose([1, 2, 3, 4, 5, 6])
blad(A, b, 0);
blad(A, b, 1);
blad(A, b, 2);
printf("\n");


printf("\n");
printf("Czy magicznego kwadratu, którego wskaźnik uwarunkowania jest wyjątkowo duży:\n");
A = magic(4)
A_cond = cond(A)
b = transpose([1, 2, 3, 4])
blad(A, b, 0);
blad(A, b, 1);
blad(A, b, 2);
printf("\n");

printf("W tym przypadku błąd jest gigantyczny dla każdego wariantu.\n");
printf("Dużo bliższy do prawidłowego rozwiązania jest wynik podawany przez octave, z błędem kilkudziesięciu procent:\n");
x_prim = A\b
b_prim = A * x_prim

