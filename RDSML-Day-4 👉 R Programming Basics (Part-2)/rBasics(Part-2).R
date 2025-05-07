# Data types in R
# Numeric type of Data- i.Integer or ii. Floating point data type (never put in qoutation)
# 2. STRING/CharacterType of data- "Mahfuza"/'Mahfuza'
# 3. Logical

a = 11
b = 7.19 
class(a)
class(b)

name = 'Mahfuza Akther'
print(name)
class(name)

c = 52 
print(c+9)
print(a+9)
class(c)

# Logical Data type:
# basically 2 types; 1. TRUE, FALSE (T, F)
a>b
class(a>b)
a<b
class(a<b)
print(a<b)
x = 19
y = 22-3

print(x==y)
print(x!=y)
print(y>x)
print(y>=x)


#Logical operators in R 
#Comparison between 2 true events 
# && Logical operator
4 == 4 && 5 == 5
T && F
F && F
class(F && F)

#||(or) logical operator
x != y || x == y

TRUE || TRUE
FALSE || TRUE
FALSE || FALSE

#Simple Mathematical Operations in R
z = 6 + 9 - 8 * (2 / 3)
print(z)

w = 4 + 3 - 3 * 2 / 3
print(w)

y =4^2
print(y)

11/5
11 %% 5

11 %/% 5


