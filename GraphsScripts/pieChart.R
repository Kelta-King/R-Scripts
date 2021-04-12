# Create a vector of pies
x <- c(1,1,1)

# Display the pie chart
pie(x)


# Pie chart with different start angle (default is 0 degrees)
x <- c(2,3,4)
pie(x, init.angle=90)


# Pie chart with labels and headers
title <- "Title of pie chart"
x <- c(34,45,43)
labels <- c("Mike", "Miller", "Mark")

pie(x, main=title, label = labels)


# Colors to pie charts's sections
x <- c(2,4,3)
colors <- c("red", "blue", "yellow")
pie(x, col=colors, label = labels, main = title)

# Legends of pie chart
pie(x, col=colors, label = labels, main = title)
legend("bottomright", labels, fill=colors)

