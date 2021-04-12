# Plots single point
plot(1,2)

# Plot with one point
plot(4)

# Plots multiple points
x <- c(4,6,8,9)
y <- c(32,22,31,30)
plot(x, y, cex=2)

# Draw sequence of points
plot(1:6, 19:24)

# Provide only one parameter
plot(1:10)

# Dataset plot
df = data.frame(
	Name = c("Kelta1", "Kelta2"),
	Marks = c(23, 24),
	height = c(143, 145)
)
plot(df['Marks'])