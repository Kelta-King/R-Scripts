# R-Language Notes
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
- (creates a series of numbers), (Find out if an element belongs to a vector), (matrix multiplication)

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
- We can break the loop with **break statement.
- With the **next statement, we can skip an iteration without terminating the loop.

### For loops

```
for (x in 1:10) {
  print(x)
} 
```
- With the for loop we can execute a set of statements, once for each item in a vector, array, list, etc.
- The for loop does not require an indexing variable to set beforehand, like with while loops.
- **break and **next statements works the same as while.

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
- To return a value from the function use **return() function.
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
- To create a global variable inside a function, you can use the **global **assignment operator <<-
```
my_function <- function() {
txt <<- "fantastic"
  paste("R is", txt)
}

my_function()

print(txt)
```
- Also, use the global assignment operator if you want to change a global variable inside a function.








