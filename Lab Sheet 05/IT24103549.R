setwd("C:\\Users\\IT24103549\\Desktop\\IT24103549")
getwd()

#Q1)
Delivery_Times <- read.table("Exercise - Lab 05.txt", header = TRUE, sep = ",")

fix(Delivery_Times) 
head(Delivery_Times)
str(Delivery_Times)  

#Q2)
# Create breaks from 20 to 70 (9 intervals = 10 break points)
breaks_seq <- seq(20, 70, length.out = 10)

# Histogram with right-open intervals
hist(Delivery_Times$Delivery_Time_.minutes., breaks = breaks_seq, right = FALSE, 
     main = "Histogram of Delivery Times", xlab = "Delivery Time (minutes)", 
     ylab = "Frequency", col = "lightyellow", border = "black")

#Q3)
#Based on the histogram:
#The distribution appears to be right-skewed (positively skewed).
#Most delivery times are concentrated in the lower intervals (closer to 20-40 minutes).
#A few higher delivery times extend the tail to the right.

#Q4)
# Histogram info (without plotting) for frequency table
hist_info <- hist(Delivery_Times$Delivery_Time_.minutes., breaks = breaks_seq, right = FALSE, plot = FALSE)
freq <- hist_info$counts
cum_freq <- cumsum(freq)

# Ogive Y values start at 0, then increase
ogive_y <- c(0, cum_freq)
# Ogive X values = class upper limits
upper_bounds <- breaks_seq

# Plot ogive
plot(upper_bounds, ogive_y, type = "o", pch = 19, col = "red",
     main = "Cumulative Frequency Polygon (Ogive) for Delivery Times",
     xlab = "Upper Limit of Delivery Time (minutes)", ylab = "Cumulative Frequency",
     ylim = c(0, max(ogive_y)))
abline(h = 0, col = "gray")
