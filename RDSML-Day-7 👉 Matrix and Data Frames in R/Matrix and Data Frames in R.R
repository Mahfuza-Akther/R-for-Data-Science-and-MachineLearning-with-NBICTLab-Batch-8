# Matrix in R
study_hours = c(89, 69, 45, 75, 63, 54, 23, 25, 57, 46)
subject_marks = c(78, 70, 72, 79, 65, 53, 82, 50, 68, 70)

# Creating a matrix just using study_hours (matrix can convert the vector to column info )
stu_hours_mat = matrix(study_hours)
stu_hours_mat
study_hours

# Joining two columns in a matrix 
student_data = c(study_hours, subject_marks)
student_data
student_matrix = matrix(student_data)
student_matrix

# Split the matrix in 2 different columns
student_matrix = matrix(student_data, byrow = FALSE, nrow = 10)
student_matrix

# Naming Rows and Columns 
colnames(student_matrix) = c('Hours', 'Marks')
student_matrix
rownames(student_matrix) = c(1:10)
student_matrix

# HW: Study hours, Marks, Passing Year


# Selecting an element from matrix 
student_matrix[4, 2]

summary(student_matrix)

# Data frames in R 
studen_names = c('Mr1', 'Ms2', 'Ms3', 'Mr4', 'Ms5')
study_hours = c(20, 30, 25, 26, 34)
marks = c( 40, 55, 69, 70, 47)
Gender = c('Male', 'Female', 'Female', 'Male', 'Female')
male = c(TRUE, FALSE, FALSE, TRUE, FALSE)

stu_data = data.frame(studen_names, study_hours, marks, Gender )
stu_data
summary(stu_data)


stu_data = data.frame(studen_names, study_hours, marks, male)
stu_data
summary(stu_data)

mean(stu_data$study_hours)
