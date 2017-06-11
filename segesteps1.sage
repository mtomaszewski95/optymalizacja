##############
import random
import operator
from copy import deepcopy
import numpy as np
from numpy import linalg as LA
######################
1.
# Porzadek leksykograficzny, minimum

def lexicographical_min_entering(self):
	return min(self.possible_entering())

def lexicographical_min_leaving(self):
	return min(self.possible_leaving())

2.
# Porzadek leksykograficzny, maximum

def lexicographical_max_entering(self):
	return max(self.possible_entering())

def lexicographical_max_leaving(self):
return max(self.possible_leaving())
3. 
# Porządek leksykograficzny mieszany1 (max wejścia min wyjścia)
def lexicographical_max_entering(self):
	return max(self.possible_entering())
def lexicographical_min_leaving(self):
	return min(self.possible_leaving())
4.
# Porządek leksykograficzny mieszany2 (max wyjścia min wejścia)
def lexicographical_min_leaving(self):
	return min(self.possible_leaving())
def lexicographical_max_leaving(self):
return max(self.possible_leaving())
5.
#  Losowa  zmienna 

def random_variable_entering(self):
    return random.choice(self.possible_entering())
  
def random_variable_leaving(self):
return random.choice(self.possible_leaving())
6.
# Zmienna wejsciowej o najwiekszym wspolczynniku funkcji celu

def coefficient_entering(self):
    coefficients = {}
    for variable in self.possible_entering():
        index = list(self.nonbasic_variables()).index(variable)
        coefficients[variable] = self.objective_coefficients()[index]
    return coefficients

def largest_coefficient_entering(self):
    coefficients = coefficient_entering(self)
    return max(coefficients.iteritems(), key=operator.itemgetter(1))[0]

def largest_coefficient_leaving(self):
return self.possible_leaving()[0]
7.
# Zmienna wejściowa o najmniejszym wspolczynniku funkcji celu

def smallest_coefficient_entering(self):
    coefficients = coefficient_entering(self)
    return min(coefficients.iteritems(), key=operator.itemgetter(1))[0]

def smallest_coefficient_leaving(self):
return self.possible_leaving()[0]
######################################
#Kopiowanie obiektu klasy InteractiveLPProgram
def objective_values(self):
    values = {}
    for variable1 in self.possible_entering():
        new_problem = deepcopy(self)
        new_problem.enter(variable1)
        for variable2 in new_problem.possible_leaving():
            new_problem2 = deepcopy(new_problem)
            new_problem2.leave(variable2)
            new_problem2.update()
            values[(variable1, variable2)] = new_problem2.objective_value()
return values
##############################################
8.
# Zmienna, ktora prowadzi do najwiekszego wzrostu funkcji celu
def largest_increase_entering(self):
    values = objective_values(self)
    return max(values.iteritems(), key=operator.itemgetter(1))[0][0]
    
def largest_increase_leaving(self):
    values = objective_values(self)
return max(values.iteritems(), key=operator.itemgetter(1))[0][1]
9.
# Zmienna, ktory prowadzi do najmniejszego wzrostu funkcji celu

def smallest_increase_entering(self):
    values = objective_values(self)
    return min(values.iteritems(), key=operator.itemgetter(1))[0][0]
    
def smallest_increase_leaving(self):
    values = objective_values(self)
return min(values.iteritems(), key=operator.itemgetter(1))[0][1]
####################################
# Najbliższe wartości zmiennej

def steepness_values(self):
    values = {}
    for variable1 in self.possible_entering():
        new_problem = deepcopy(self)
        new_problem.enter(variable1)
        for variable2 in new_problem.possible_leaving():
            new_problem2 = deepcopy(new_problem)
            new_problem2.leave(variable2)
            new_problem2.update()
            x_delta = new_problem2.basic_solution()-self.basic_solution()
            values[(variable1, variable2)] = np.dot(self.objective_coefficients(), x_delta/np.linalg.norm(x_delta))
    return values

##################################
10.
# Zmiennej, ktory prowadzi do wierzcholka w kierunku najblizszym wektorowi c (gradientowi funkcji celu)

def steepest_edge_entering(self):
    values = steepness_values(self)
    return max(values.iteritems(), key=operator.itemgetter(1))[0][0]

def steepest_edge_leaving(self):
    values = steepness_values(self)
return max(values.iteritems(), key=operator.itemgetter(1))[0][1]
11.
#Zmienna, ktory prowadzi do wierzcholka w kierunku najdalszym wektorowi c (gradientowi funkcji celu)

def flattest_edge_entering(self):
    values = steepness_values(self)
    return min(values.iteritems(), key=operator.itemgetter(1))[0][0]

def flattest_edge_leaving(self):
    values = steepness_values(self)
return min(values.iteritems(), key=operator.itemgetter(1))[0][1]

