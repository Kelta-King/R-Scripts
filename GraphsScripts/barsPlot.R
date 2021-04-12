# Simple bar plot
barplot(c(3,4,5,6))

# Bar plot with names
names <- c("BMW", "MerC", "Bugati", "Suzuki")
sellCount <- c(200, 180, 9, 890)

barplot(sellCount, names.arg = names)

# Bar plot with color
barplot(sellCount, names.arg = names, col='blue')

# Bar plot with density
x <- c("A", "B", "C", "D")
y <- c(7,5,3,9)
barplot(y, names.arg = y, col = 'blue', density = 10)

# Bar plot with different widths
x <- c("A", "B", "C", "D")
y <- c(2, 4, 6, 8)

barplot(y, names.arg = x, width = c(1,2,3,4)) 

# Horizontal bar plot
x <- c("A", "B", "C", "D")
y <- c(2, 4, 6, 8)

barplot(y, names.arg = x, horiz = TRUE) 
