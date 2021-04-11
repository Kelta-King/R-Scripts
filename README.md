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












