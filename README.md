# Matematyka Obliczeniowa - Zadanie laboratoryjne
###### Paweł Włodarczyk-Pruszyński, 1 czerwca 2018


### Rozwiązanie

Funkcja opisana w treści zadania, zwracająca czynniki rozkładu trójkątno-trójkątnego:  
```function [R, p, q] = rozklad(A, s)```  
znajduje się w pliku `rozklad.m`.

Funkcja orpisana w treści zadania, rozwiązująca układ równań `Ax=b` wykorzystując rozkład `R, p, q`:  
```function [x] = rozwiaz(R, p, q, b)```  
znajduje się w pliku `rozwiaz.m`

### Wykorzystanie

przykładowe wykorzystanie powyższych funkcji:  
```
> [R, p, q] = rozklad([1,0;0,1], 0);
> [x] = rozwiaz(R, p, q, transpose([1,1]));
> x
x =

   1
   1


```
