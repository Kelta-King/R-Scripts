# Plotting in R language

## Plotting points
- Use **plot()** function to draw points.
- Parameter-1 specifies x axis and parameter-2 specifies y axis.
- If you provide only one parameter then by default y = x.
- To draw a line specify **type='l'** in a parameter.
- Plot labels can be provided by **main, xlab, ylab** parameters.
- Graph points color can be specified by **col** parameter.
- Point size can be provided by **cex** parameter. 2 means double the size.
- Point shape can be specified bt **pch** parameter.
- pch values are from 0 to 25.

## Drawing line
- To draw a line specify **type='l'** in a parameter.
- To add color in line add **col = 'red'**  as parameter.
- Line width can be added by **lwd=2**. (1 is default, while 0.5 means 50% smaller, and 2 means 100% larger)
- Line style can given bt **lty=3**. (lty parameter with a value from **0 to 6** to specify the line format)

## Draw multiple lines
- To display more than one line in a graph, use the **plot()** function together with the **lines()** function.
```
line1 <- c(1,2,3,4,5,10)
line2 <- c(2,5,7,8,9,10)

plot(line1, type = "l", col = "blue")
lines(line2, type="l", col = "red")
```

## Scatter plot
- It is simple with **plot()** function.
- TO draw multiple scatter plots use **points()** function.
```
# day one, the age and speed of 12 cars:
x1 <- c(5,7,8,7,2,2,9,4,11,12,9,6)
y1 <- c(99,86,87,88,111,103,87,94,78,77,85,86)

# day two, the age and speed of 15 cars:
x2 <- c(2,2,8,1,15,8,12,9,7,3,11,4,7,14,12)
y2 <- c(100,105,84,105,90,99,90,95,94,100,79,112,91,80,85)

plot(x1, y1, main="Observation of Cars", xlab="Car age", ylab="Car speed", col="red", cex=2)
points(x2, y2, col="blue", cex=2) 
```

