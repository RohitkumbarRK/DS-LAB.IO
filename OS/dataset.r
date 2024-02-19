# Import CSV file
employee_data <- read.csv("input.csv")

# a) Find the total number of rows & columns
num_rows <- nrow(employee_data)
num_cols <- ncol(employee_data)
cat("Total number of rows:", num_rows, "\n")
cat("Total number of columns:", num_cols, "\n")

# b) Find the maximum salary
max_salary <- max(employee_data$salary)
cat("Maximum salary:", max_salary, "\n")

# c) Retrieve the details of the employee with the maximum salary
employee_max_salary <- employee_data[employee_data$salary == max_salary, ]
cat("Details of the employee with maximum salary:\n")
print(employee_max_salary)

# d) Retrieve all the employees working in the IT Department
it_employees <- employee_data[employee_data$dept == "IT", ]
cat("Employees working in the IT Department:\n")
print(it_employees)

# e) Retrieve the employees in the IT Department whose salary is greater than 20000
it_employees_above_20000 <- it_employees[it_employees$salary > 20000, ]

# Write these details into another file "output.csv"
write.csv(it_employees_above_20000, file = "output.csv", row.names = FALSE)
cat("Details of IT employees with salary greater than 20000 have been written to 'output.csv'.\n")
