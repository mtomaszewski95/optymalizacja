%typeset_mode True
A = ([-1, 1], [1, 0], [0,1])
b = (1,3,2)
c = (1,1)
P = InteractiveLPProblem(A, b, c, ["x1", "x2"])
P.plot()
view(P)
Pst = P.standard_form()
Pst.run_simplex_method()
lp = MixedIntegerLinearProgram(maximization=True)
x = lp.new_variable()
lp.set_objective(1*x[0] - 1*x[1])
# dodajemy nierówności
lp.add_constraint(-1*x[0] + x[1], max=1)
lp.add_constraint(x[0] , max=3)
lp.add_constraint(x[1], max=2)
# wynik optymalizacji
print lp.solve()

# wartosci zmiennych
val = lp.get_values(x)
print val
# niestety nie wiem co dalej i nie wiem jak to uruchomic wiec, po prostu dalej przepisze
def f(x0,x1,x2,x3,x4):
    return x0 + x1 - 3*x4

A = matrix([[2,-1,1,0,-2],[-1,-3,0,1,1]])
print A
A01 = matrix([A.column(0),A.column(1)]); print A01.determinant()
A02 = matrix([A.column(0),A.column(2)]).T; print A02.determinant()
print A02
A03 = matrix([A.column(0),A.column(3)]).T; print A03.determinant()
print A03
A04 = matrix([A.column(0),A.column(4)]).T; print A04.determinant()
A12 = matrix([A.column(1),A.column(2)]).T; print A12.determinant()
A13 = matrix([A.column(1),A.column(3)]).T; print A13.determinant()
A14 = matrix([A.column(1),A.column(4)]).T; print A14.determinant()
A23 = matrix([A.column(2),A.column(3)]).T; print A23.determinant()
A24 = matrix([A.column(2),A.column(4)]).T; print A24.determinant()
A34 = matrix([A.column(3),A.column(4)]).T; print A34.determinant()
b = vector([4,-5])
x01 = A01.solve_right(b); print x01; print f(x01[0],x01[1],0,0,0)
x02 = A02.solve_right(b); print x02; print f(x02[0],0,x02[1],0,0)
x03 = A03.solve_right(b); print x03; print f(x03[0],0,0,x03[1],0)
#x04 = A04.solve_right(b); print x04; f(x04[0],0,0,0,x04[1])
x12 = A12.solve_right(b); print x12; print f(0,x12[0],x12[1],0,0)
x13 = A13.solve_right(b); print x13; print f(0,x13[0],0,x13[1],0)
x14 = A14.solve_right(b); print x14; print f(0,x14[0],0,0,x14[1])
x23 = A23.solve_right(b); print x23; print f(0,0,x23[0],x23[1],0)
x24 = A24.solve_right(b); print x24; print f(0,0,x24[0],0,x24[1])
x34 = A34.solve_right(b); print x34; print f(0,0,0,x34[0],x34[1])
