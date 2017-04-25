Wykonanuje zadanie z wykladu nr 4. Uruchomiwszy program w C dostaje wygenerowany kod, który wklejam do solwera http://hgourvest.github.io/glpk.js/.
Maximize
sum :- x3- x4
Subject To 
q0: + 1 x0 + 3 x1 + 1 x2 + 1 x3 = 4 
q1: + 2 x1 + 3 x2 + 1 x4 = 2 
Bounds 
0 <= x0 
0 <= x1 
0 <= x2 
0 <= x3 
0 <= x4 
Generals 
x0 
x1 
x2 
x3 
x4 
End

Reading problem data
2 rows, 5 columns, 7 non-zeros
5 integer variables, none of which are binary
18 lines were read
Scaling...
 A: min|aij| = 1  max|aij| = 3  ratio = 3
Problem data seem to be well scaled
GLPK Simplex Optimizer, v4.49
2 rows, 5 columns, 7 non-zeros
Preprocessing...
2 rows, 3 columns, 5 non-zeros
Scaling...
 A: min|aij| = 1  max|aij| = 3  ratio = 3
Problem data seem to be well scaled
Constructing initial basis...
Size of triangular part = 2
*0: obj = -2  infeas = 0 (0)
*1: obj = 0  infeas = 0 (0)
OPTIMAL SOLUTION FOUND
{"x3":0,"x4":0,"x0":3.3333333333333335,"x1":0,"x2":0.6666666666666666}
Wyszło jakies rozwiazanie, inne niz w tresci wykladu, lecz rozwiazanie istnieje, wiec wszystko jest ok.
Zadanie 6 z laboratorium 6
Tak samo jak poprzednio generuje kod za pomoca programu w C:
Maximize
sum :- x4- x5
Subject to 
q0 : + 8 x0 + 3 x1 -5 x2 + 1 x3 + 1 x4 = 4 
q1 : + 3 x0 + 1 x1 -2 x2  -1 x3 + 1 x5 = 1 
Bounds 
0 <= x0 
0 <= x1 
0 <= x2 
0 <= x3 
0 <= x4 
0 <= x5 
Generals 
x0 
x1 
x2 
x3 
x4 
x5 
End
Reading problem data
2 rows, 6 columns, 10 non-zeros
6 integer variables, none of which are binary
21 lines were read
Scaling...
 A: min|aij| = 1  max|aij| = 8  ratio = 8
Problem data seem to be well scaled
GLPK Simplex Optimizer, v4.49
2 rows, 6 columns, 10 non-zeros
Preprocessing...
2 rows, 4 columns, 8 non-zeros
Scaling...
 A: min|aij| = 1  max|aij| = 8  ratio = 8
Problem data seem to be well scaled
Constructing initial basis...
Size of triangular part = 2
*0: obj = -5  infeas = 0 (0)
*2: obj = 0  infeas = 0 (0)
OPTIMAL SOLUTION FOUND
{"x4":0,"x5":0,"x0":0.45454545454545453,"x1":0,"x2":0,"x3":0.36363636363636365}
