# Draw line
plot(1:23, type='l')

# Line color
plot(1:23, type='l', col='red')

# Line width
plot(1:23, type='l', lwd=20, lty=2)

# Multiline in plots
line1 <- c(1,2,3,4,5,10)
line2 <- c(2,5,7,8,9,10)

plot(line1, type = "l", col = "blue")
lines(line2, col = "red") 
