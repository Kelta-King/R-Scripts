# Basic R-Language Notes
Notes for Learning R language

## Printing Something

- Simply write the string
- use print() function

## Comments

- Only single line comment (stats with #)

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

# Some advance concepts
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



