setwd("C:\\Users\\HP\\Desktop\\IT24103549")

#Exercise
#Q1
punif(25,min = 0,max = 40,lower.tail = TRUE) - punif(10,min = 0,max = 40,lower.tail = TRUE)

#Q2
pexp(2,rate = 1/3,lower.tail = TRUE)

#Q3.1
pnorm(130,mean = 100,sd = 15,lower.tail = FALSE)
1-pnorm(130,mean = 100,sd = 15,lower.tail = TRUE)

#Q3.2
qnorm(0.95,mean = 100,sd = 15,lower.tail = TRUE)

