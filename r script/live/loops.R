marks <- c(80,85,90,87,93,74,89)

number_of_subject <- length(marks)

total_marks <- 0

for (mark in marks) {
  total_marks <- total_marks + mark
}
print(paste("Total marks is",total_marks))
avg <- total_marks/number_of_subject
print(paste("Avg marks is",avg))




##################################
balance <- 10000
withdrawal <- 100

min_balance <- 200

while(balance > min_balance){
  balance <- balance - withdrawal
  print(paste("New balance is",balance))
}


lives <- 5
kill <- 1

while {
  if (input = "Kill")
  while(lives > 0){
    lives <- lives - kill
    print(paste("Mario lives left",lives))
  }
}





lives <- 5
kill <- 1
while(lives > 0) {
  input <- readline(prompt= "Enter input: Alive or Kill")
  if (input == "kill") {
    lives <- lives - kill
    print(paste("Mario lives left",lives))
  } else {
    print(paste("Mario lives left",lives))
  }
}

