#Factors in R
# Summary of Numeric items

participant_age = c(78, 25, 68, 45, 48, 38)
summary(participant_age)

# Finding summary of characters 
profession =c ("Doctor", "Teacher", "Teacher", "Businessman", "Teacher", "engineer")
summary(profession)
#unable to find an inherited method for function ‘Summary’ for signature ‘x = "character"’
#we have to convert the vector to factor first

profession = factor(profession)
summary(profession)

# Putting the summary in order
birth_month = c("January", "December", "April", "August", "January", "March","June", "February", "April", "July", "August", "September", "July","August", "October")
summary(birth_month)

birth_month_fact = factor(birth_month) 
summary(birth_month_fact)


birth_month_fact = factor(birth_month, 
                          ordered = TRUE, 
                          levels = c("January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December")) 
summary(birth_month_fact)


#Lists in R
# Lists are used to place number of items in a bundle

a = c(2, 4, 7)
b = c("Red", "Green", "Blue")
c = "welcome"

my_list = list(a, b, c)
my_list

# Naming the list item
my_list = list (Pieces = a, Colors = b, Message = c)
my_list

# Calling a specific data structure 
my_list[1]
my_list[2]
my_list["Colors"]
my_list $Message

# Calling a specific items from the data structure
my_list$Colors[2]
