# Matematyka Obliczeniowa - Zadanie laboratoryjne
###### Paweł Włodarczyk-Pruszyński, 1 czerwca 2018


### Rozwiązanie

Funkcja opisana w treści zadania, zwracająca czynniki rozkładu trójkątno-trójkątnego:  
```
function [R, p, q] = rozklad(A, s)
```  
znajduje się w pliku `rozklad.m`.

Funkcja opisana w treści zadania, rozwiązująca układ równań `Ax=b` wykorzystując rozkład `R, p, q`:  
```
function [x] = rozwiaz(R, p, q, b)
```  
znajduje się w pliku `rozwiaz.m`

Funkcja zwracająca normę macierzy `A` oraz błąd względny rozwiązania, tj `|b - Ax|/|x|`:  
``` 
function [] = blad(A, b, s)
```
znajduje się w pliku `blad.m`

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

### Przypadki testowe
 
Przypadki testowe, wyniki dla nich oraz komentarze można wyświetlić uruchamiając skrypt `script.m`.

### Podsumowanie

Wariant 0. (bez wyboru elementu głównego) daje nieprawidłowe wyniki (lub nie daje żadnego wyniku) w wielu, łatwych do spotkania w praktyce układach równań liniowych (zero lub wartości bliskie zeru na przekątnej), z tego względu nie powinien być on wykorzystywany, jeśli nie mamy informacji o kształcie macierzy dla której rozwiązujemy zadanie.  
Zarówno wariant 1. jak i wariant 2. radzą sobie podobnie, dość dobrze, w znacznej większości sytuacji, jednakże wariant 2. jest o wiele bardziej kosztowny ze względu na konieczność wielokrotnego szukania elementu największego w dużej części macierzy. Co więcej istnieją przypadki (jak np. kwadrat magiczny), dla których nawet ta metoda daje niesatysfakcjonujące (a właściwie bezwartościowe) wyniki. W sytuacjach tych i tak trzeba skorzystać z innych technik, wydaje się więc że wariant 2. (Z pełnym wyborem elementu głównego) nie przedstawia zwykle praktycznej przewagi nad wariantem 1.

### Oszacowanie błędu

Błąd względny wyniku `x` szacujemy przez iloczyn błędu względnego `b` oraz wskaźnika uwarunkowania `A` (patrz plik blad.m).
