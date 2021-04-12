# Basic R-Language Notes
Notes for Learning R language

## Printing Something

- Simply write the string
- use print() function

## Comments

- Only single line comment (starts with #)

## Variables

- Use <- assignment operator to assign value to any variable 
Like; x<-"Kushang shah"
- = is also fine but it can be forbidden in some context in R.
- print variable by print(x)

## Concatation of variables

- paste() function is being used.
- x <- "Awosome"
- paste("R is ", x)
- Prints 'R is Awosome'
- concatation of variables are also fine paste(var1, var2)
- Yo can add more than 2 parameters in paste() function as well. paste("R is ", x, y) works just fine.
- paste() function always concates as strings (paste(1,2,3) will give '123' as output)
- To add numbers + operator comes in picture. x + y
- x<-y<-z<-'yo' assigns 'yo' to each variables.

## Data types

- numeric, integer, complex, character(string), logical
- (10.5), (1L letter "L" declares this as an integer), (9 + 3i, "i" is the imaginary part), ("Yoman"), (TRUE or FALSE)
- We can use class() function to check the data types of each variable.

## Numbers in R

- numeric, integer, comples are numbers.
- numeric contains any number with or without decimal; 10, 34.2 etc.

- Integers are numerica data without decimals.

- A complex number is written with an "i" as the imaginary part.

## Type conversions in numbers

- as.numeric(), as.integer(), as.complex() is being used.
- Warning message shows up when you try to convert complex to integer or numeric. Viseversa works fine.

## Mathamatics in R

- R have many operators for math.
- +, -, *, /, ^, %%, %/%
- (add), (sub), (mul), (div), (exponent), (modulus:Remainder), (integer div)

- Some build in math functions.
- min(), max(), sqrt(), abs(), ceiling(), floor()

## R strings

- To add multiline strings...
```
x <- " Hey man, I am
    Kushang shah.
"
```
- It will add \n whenever you have break the line.
- If you want to print exactly like this then use cat() function.
- cat(x) will print it accordingly.

- To get the length of string use nchar() function.
- Use grepl() function to check a substring in string. Returns boolean. grepl("H", "Hello")
- paste() function is being used to combine two or more stirngs.
- \ is an escape character.
- However, while printing string \ will also get print. Use cat() function to avoid that.

## Booleans in R

- ==, !=, >, <, >=, <= operators returns boolean. They are comparision operators.

-  &, &&, |, ||, ! are logical operators.
- (and, or, not)
- Will find the difference after vectors.

- :, %in%, %*% (Miscellaneous operators)
- (creates a series of numbers, seperates all by 1), (Find out if an element belongs to a vector), (matrix multiplication)

## if...else

```
a<-2
b<-3

if (b > a) {
  print("b is greater than a")
} 
```

- Always use {} to define scope.
- else if is also there.
- &, |, ! is used for logical operations.

## Loops in R

- Two loops are there. While and for.

### While loops

```
i <- 1
while (i < 6) {
  print(i)
  i <- i + 1
}
```
- We can break the loop with **break** statement.
- With the **next** statement, we can skip an iteration without terminating the loop.

### For loops

```
for (x in 1:10) {
  print(x)
} 
```
- With the for loop we can execute a set of statements, once for each item in a vector, array, list, etc.
- The for loop does not require an indexing variable to set beforehand, like with while loops.
- **break** and **next** statements works the same as while.

## Functions in R
- A function is a block of code which only runs when it is called.

```
my_function <- function(){ 
  print("Hello World!")
}
```
- To call a function just simply write their name and paranthesis. See below code.
```
my_function <- function() {
  print("Hello World!")
}

my_function()
```

## Arguments of functions
- Information can be passed into functions as arguments.
- You can add as many arguments as you want, just separate them with a comma.
```
my_function <- function(fname) {
  paste(fname, "Griffin")
}

my_function("Peter")
my_function("Lois")
my_function("Stewie") 
```
- To give the parameter a default value, use my_function(par = 'yo'){} in the function definition.
- When calling the function, number of arguments must be tha same of parameters of function definition.
- To return a value from the function use **return()** function.
```
my_function <- function(x) {
  return (5 * x)
}

print(my_function(3))
```

## Write a function within a function

- In R, we can write a new function within another function. Inner function can only be called from inside the function.
```
Outer_func <- function(x) {
  Inner_func <- function(y) {
    a <- x + y
    return(a)
  }
  return (Inner_func)
}
output <- Outer_func(3) 
output(5) # Prints 8 because 5 + 3 = 8
```
- Code explanation:
- Here, first we are storing Outer_func(3) function's return value Inner_func in output variable.
- Then now we have Inner_func in output variable, so we call output with the parameter y value.
- During the declaration of output variable, function's x value get initialized. And in later we use it.

- Recursion is also working in R.

## Global variables

- Global variables can be used by everyone, both inside of functions and outside.
```
txt <- "awesome"
my_function <- function() {
  paste("R is", txt)
}

my_function()
```
- If you create a variable with the same name inside a function, this variable will be local, and can only be used inside the function.
- To create a global variable inside a function, you can use the **global assignment** operator <<-
```
my_function <- function() {
txt <<- "fantastic"
  paste("R is", txt)
}

my_function()

print(txt)
```
- Also, use the global assignment operator if you want to change a global variable inside a function.

# Data Structures
- Here we will cover list, vectors, plotting, stats etc. 

## R Vectors
- A vector is simply a list of items that are of the same type.
- use **c()** function to make a vector. x<-c('yo', 'man')
- A vector can contain only one type of data. If we add numeric data or logical data along with string then it will treat all values as string.
- 1:10 will return a vector with 1 difference. (1 2 3 ... 10)
- 1.5:5.5 (1.5 2.5 3.5 4.5 5.5)
- 1.5:5.4 (1.5 2.5 3.5 4.5)
- To sort a vector use sort() function.

```
fruits <- c("banana", "apple", "orange", "mango", "lemon")
numbers <- c(13, 3, 5, 7, 20, 2)

sort(fruits)  # Sort a string
sort(numbers) # Sort numbers 
```

- To access a value of vector use [index].
- Like; x<-c("Yo", "No", "hey")
- x[1] # prints "Yo"
- In R indexing starts from 1.
- We can also refer to different indexes using c() function.
```
fruits <- c("banana", "apple", "orange", "mango", "lemon")

# Access the first and third item (banana and orange)
fruits[c(1, 3)] 
```
- To find out how many items a vector has, use the **length()** function.
- To add new value in a vector, simply assign value to that index. fruits[4] <- "Kiwi".
- You can also use negative index numbers to access all items except the ones specified. Like fruits[c(-1)]. It ignores 1st value.
- To change an item use fruits[1] <- "kiwi"

## Repeat vectors

- Use **rep()** function.
- To repeat each value; repeat_each <- rep(c(1,2,3), each = 3)
- It will print 111222333

- To repeat sequence; repeat_sequence <- rep(c(1,2,3), times = 3)
- It will print 123123123

- To repeat each value independently; repeat_independent <- rep(c(1,2,3), times = c(4,3,2))
- It will print 111122233

## Generating sequenced vectors

- **:** operator generates sequenced vector with interval of value 1.
- To make bigger or smaller steps in a sequence, use the **seq()** function:
- numbers <- seq(from = 0, to = 100, by = 20) # prints 0 20 40 60 80 100

## Lists

- A list in R can contain many different data types inside it.
- Use **list()** function to create one.
- Indexing of list also starts with 1.
```
thislist <- list("apple", "banana", "cherry")

thislist[1] 
```
- To access the value use []. Same as vectors.
- To change the value, same as vectors.
- Find the length with **length()** function.
- To find out if a specified item is present in a list, use the **%in%** operator.
```
thislist <- list("apple", "banana", "cherry")

"apple" %in% thislist
```

## Add item to the list

- To add an item to the end of the list use **append()** function.
```
thislist <- list("apple", "banana", "cherry")

append(thislist, "orange")
```
- To add an item to the right of a specified index, add "after=index number" in the append() function.
```
thislist <- list("apple", "banana", "cherry")

append(thislist, "orange", after = 2)
```
- fruits[-1] will return the list except the index value 1.
- So, with the help of this feature, we can delete index 1 by copying the updated list in new variable.
- You can specify a range of indexes by specifying where to start and where to end the range, by using the : operator.
- Example; fruits[1:4]
- It will start from index 1 to index 4. Both **incuded.**

## Loop through a list and vectors:
- Vectors
```
fruits <- c("banana", "apple", "orange")

for (x in fruits){
	print(x)
}
```
- List looping is also same as vector's.
```
thislist <- list("apple", "banana", "cherry")

for (x in thislist) {
  print(x)
}
```

## Join two lists:

- The most common way to do this is to use the **c() function**.
```
list1 <- list("a", "b", "c")
list2 <- list(1,2,3)
list3 <- c(list1,list2)

list3 
```

## R Matrices

- Two dimentional data set.
- Use **matrix()** function to make one.
```
# Create a matrix
thismatrix <- matrix(c(1,2,3,4,5,6), nrow = 3, ncol = 2)

# Print the matrix
thismatrix 
```
- Assignment of c() starts column wise. So, 1,2,3 will be in column1 and 4,5,6 will be in column2.
- Note: c() function is used to concatenate items together.
- To access matrix item, thismtrix[1,2] will be used.
- To access an entire row, use thismatrix[1,]. Entire 1st row will be displayed.
- To access an entire column, use thismatrix[,1]. Entire 1st column will be displayed.
- Access more than one rows, use thismatrix[c(1,2),]. Row 1 and 2 will be displayed.
- Access more than one columns, use thismatrix[,c(1,2)]. Column 1 and 2 will be displayed.

## Add and remove from Matrices
- To add Row use **rbind()** function.
```
thismatrix <- matrix(c("apple", "banana", "cherry", "orange","grape", "pineapple", "pear", "melon", "fig"), nrow = 3, ncol = 3)

newmatrix <- cbind(thismatrix, c("strawberry", "blueberry", "raspberry"))

# Print the new matrix
newmatrix 
```
- To add Column use **cbind()** function.
```
thismatrix <- matrix(c("apple", "banana", "cherry", "orange","grape", "pineapple", "pear", "melon", "fig"), nrow = 3, ncol = 3)

newmatrix <- rbind(thismatrix, c("strawberry", "blueberry", "raspberry"))

# Print the new matrix
newmatrix 
```
- Remember one thing that always try to maintain the dimention. Otherwise it will pop an error.
- To remove things from matrix use thismatrix[-c(index1), -c(index2)].
- thismatrix[-c(1),] will remove first row.
- thismatrix[,-c(1)] will remove first column.
- thismatrix[-c(1),-c(1)] will remove first row and first column.
- To check whether an element exists in the matrix use **%in%** operator.
- Use the **dim()** function to find the amout of rows and columns in a matrix.
- Use **length()** function to find the dimention of any matrix.

## Combine two matrices
- We can use **rbind()** and **cbind()** functions to combine two matrices. 
- Make sure both have same rows count or columns count accordingly.

## Arrays in R

- Arrays can have more than 2 dimentions.
- Use **array()** function to make and dim parameter to specify the dimention. 
```
arr <- array(c(1:24), dim = c(4, 3, 2))
arr
```
- In dim = c(4, 3, 2), 4 is number of rows, 3 is number of columns, 2 is how much dimention we wants.
- Arrays can only have **one data type**.
- To access any array item arr[2, 1, 2] use this.
- array[row position, column position, matrix level]

- To access the entire 1st row use arr[c(1),,1]
- To access the entire 2nd column use arr[,c(1), 1]

- To check if an item exists in an array use **%in%** operator. 'yo' %in% arr.
- To get the amout of rows available in an array use **dim()** function.
- To get the dimention of an array use **length()** function.

- Loop in an array is simple.
```
thisarray <- c(1:24)
multiarray <- array(thisarray, dim = c(4, 3, 2))

for(x in multiarray){
  print(x)
} 
```

## Data Frames in R 
- Data Frames are data displayed in a format as a table.
- Can have different types of data but the data type of one column must be same.
- **data.frame()** function is used for DF creation.

```
Data_Frame <- data.frame (
  Training = c("Strength", "Stamina", "Other"),
  Pulse = c(100, 150, 120),
  Duration = c(60, 30, 45)
)

# Print the data frame
Data_Frame 
```
- In the above example, Training, Pulse, Duration is a columns and their values have respective column values.
- Use **summary()** function to summarizes the data.
- Use [], [[]] or $ to access items in DF.
- Data_Frame[1], Data_Frame[["Training"]], Data_Frame[[1]], Data_Frame$Training will all load 1st column.
- Data_Frame[1] loads value as data.frame type while Data_Frame[[1]] returns a vector. So, generally for computation purpose use [[index]].
- Use **rbind()** and **cbind()** function to add rows and columns respectively.
- New_row_DF <- rbind(Data_Frame, c("Strength", 110, 110))
- New_col_DF <- cbind(Data_Frame, Values = c('val1', 'val2', 'val3'))

## Operations on DataFrame
- To remove a row use **c()** function.
- n <- df[-c(1),] Removes first row.
- n <- df[,-c(1)] Removes first column.
- n <- df[-c(1), -c(1)] removes first row and column.
- Use **dim()** function to find the amount of rows and columns.
- Use **length()** function to get the columns count in df.
- **ncols()** and **nrows()** also returns counts for columns and rows respectively.
- We can also use **rbind()** function to combine two dfs rows (vertical combination).
```
Data_Frame1 <- data.frame (
  Training = c("Strength", "Stamina", "Other"),
  Pulse = c(100, 150, 120),
  Duration = c(60, 30, 45)
)

Data_Frame2 <- data.frame (
  Training = c("Stamina", "Stamina", "Strength"),
  Pulse = c(140, 150, 160),
  Duration = c(30, 30, 20)
)

New_Data_Frame <- rbind(Data_Frame1, Data_Frame2)
New_Data_Frame 
```
- We can use **cbind()** function to combine two dfs columns (Horizontally).
```
Data_Frame3 <- data.frame (
  Training = c("Strength", "Stamina", "Other"),
  Pulse = c(100, 150, 120),
  Duration = c(60, 30, 45)
)

Data_Frame4 <- data.frame (
  Steps = c(3000, 6000, 2000),
  Calories = c(300, 400, 300)
)

New_Data_Frame1 <- cbind(Data_Frame3, Data_Frame4)
New_Data_Frame1
```

## R Factors
- Used to catagorize the data.
- Gender: male, female etc.
- In order to make a factor, use **factor()** function.

```
# Create a factor
music_genre <- factor(c("Jazz", "Rock", "Classic", "Classic", "Pop", "Jazz", "Rock", "Jazz"))

# Print the factor
music_genre 
```
- To print only levels use **level(music_genre)**.
- We can also specify level argument inside the function.
- x <- factor(c("Classic", "Opera"), levels = c("Classic")).
- Use the **length()** function to get the length of all the c() values of factor.
- To access the factor items use [].
- music_genre[3] # Gets third value of factor's vector.

## Change values in factor

- To change the value in a factor, do this. fac[2] <- "Yoman"
```
music_genre <- factor(c("Jazz", "Rock", "Classic", "Classic", "Pop", "Jazz", "Rock", "Jazz"))

music_genre[3] <- "Pop"

music_genre[3] 
```

- But note one thing here, that we cannot change the value of vector if the value is not in the levels.
- But if we have already specified that new value in the levels already then we can do this.
```
music_genre <- factor(c("Jazz", "Rock", "Classic", "Classic", "Pop", "Jazz", "Rock", "Jazz"), levels = c("Classic", "Jazz", "Pop", "Rock", "Opera"))

music_genre[3] <- "Opera"

music_genre[3]
```







