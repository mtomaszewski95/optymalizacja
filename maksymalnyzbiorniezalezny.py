V = ['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J' ]

E = dict()
E['A'] = [ 'E','B','F' ]
E['B'] = [ 'A', 'C','G' ]
E['C'] = [ 'B', 'D','H' ]
E['D'] = [ 'C','E','I' ]
E['E'] = [ 'A','D','J' ]
E['F'] = [ 'A','I','H' ]
E['G'] = [ 'B','J','I' ]
E['H'] = [ 'C','J','F' ]
E['I'] = [ 'D','G','F' ]
E['J'] = [ 'G','H','E' ]
# Utworzenie problemu

p = MixedIntegerLinearProgram()
var = p.new_variable(binary=True, nonnegative=True)
