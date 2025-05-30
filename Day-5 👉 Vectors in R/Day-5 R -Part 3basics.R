# vectors in R

#creating a vector using c()command
student.height = c(60, 69, 55, 62)
student.height

# checking the class of the vector student.height
is.numeric(student.height)
is.logical(student.height)

# R automatically converts numeric to text, 
# when you have a text item in the vector
b = c(5, 8, 2, "sv")
b
is.numeric(b)
is.character(b)


#we can convert data types
#we can convert numeric to chareter data types but 
#its not possible always to convert the charecter data to numeric
#for example Numeric to character
a = c(1, 2, 3, 4, 5)
a
class(a)
is.numeric(a)
a = as.character(a)
a
class(a)

# Logical operator TRUE and FALSE when converted 
# to numeric, TRUE converts to 1, 
#and FALSE converts to 0
d = c(TRUE, FALSE, FALSE, TRUE, FALSE)
d = as.numeric(d)
d

# converting numeric to logical(1 or any number other than 0 converts to TRUE, 
# 0 converts to FALSE)
d
class(d)
d = as.logical(d)
d

e = c(1, 0, 0, 1, 2, 0, 30, -7, 0)
e = as.logical(e)
e


#creating sequential vector
# creating a vector from 1 to 10
my_seq = c(1:100)
my_seq

my_seq = c(1:50, 12, 10, 1, 3, 8, 88, 99, 67, 78, 45, 67, 88, 99, 23, 44, 56, 78,)
my_seq

# creating a sequential vector using the seq() function
# in  seq we use "," but in normal we have to use":"
new_seq = c(seq(1,10))
new_seq

#sequencing in steps of 3
#step fix korte "by=" dea korte hobe
new_seq = c(seq(1,10, by=3))
new_seq

# vectors can have character
names = c("Elias", "Mahfuza", "Ashraf","chaiti")
names
class(names)
names[2]
names[2:4]
names[3:4]

# Assigning names to vector values
my_values = c(4, 7, 9, 11)
names(my_values) =c("a", "b", "c", "d")
my_values
my_values["c"]

