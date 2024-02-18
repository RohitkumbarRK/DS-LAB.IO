# Generate employee data
employee_data <- data.frame(
  id = 1:20,
  name = c("John Doe", "Jane Smith", "Michael Johnson", "Emily Brown", "David Lee", "Sarah Wilson", 
           "Chris Taylor", "Emma Anderson", "James Clark", "Laura Garcia", "Matt Adams", "Amy Martinez", 
           "Kevin Walker", "Olivia Perez", "Daniel White", "Hannah Thomas", "Nathan Rodriguez", 
           "Michelle King", "Andrew Scott", "Amanda Green"),
  salary = c(30000, 35000, 28000, 25000, 40000, 22000, 32000, 27000, 38000, 26000, 
             31000, 29000, 33000, 24000, 36000, 27000, 39000, 23000, 34000, 31000),
  start_date = as.Date(c("2020-01-15", "2019-05-20", "2021-03-10", "2018-11-05", "2017-09-01", 
                         "2022-02-28", "2023-07-15", "2020-08-10", "2019-12-03", "2021-10-20", 
                         "2018-04-15", "2022-06-30", "2023-01-10", "2017-11-20", "2019-08-05", 
                         "2020-02-15", "2018-05-10", "2021-04-25", "2022-09-12", "2017-12-30")),
  dept = c("IT", "HR", "IT", "Finance", "IT", "IT", "HR", "Finance", "IT", "HR", 
           "Finance", "IT", "IT", "HR", "Finance", "IT", "HR", "Finance", "IT", "HR")
)

# Save to CSV
write.csv(employee_data, file = "input.csv", row.names = FALSE)

# Read CSV file
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

# Read the output file for further analysis
output_data <- read.csv("output.csv")
cat("Output file 'output.csv' has been read.\n")
