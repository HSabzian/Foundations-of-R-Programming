
############################################### I: Data Structures 

###############Variable Types

a <- 1.        ### Numeric type
b <- 1.0001  ### Numeric type
c <- 'hey'  ### Character type
d <- TRUE ### Boolean type

class(a) ## check the class of variable type
class(b)
class(c)

? class # get information about this function
help(class)  # get information about this function by using help method

############### classes

#### 1: Making a vector

x <-  c(1,2,3,4,5,6) ## Making a vector of numeric values
y <- 1:6 ## Making a vector of numeric values

# accessing to a vector contents

x[1] ## get first value


#### 2: making a matrix

my_elements <- c(1,2,3,4,5,6,7,8,9,10,11,12)
my_matrix = matrix(my_elements, 3,4)

print(my_matrix). ## You see the elements are organized by columns

my_matrix = matrix(my_elements, 3,4, byrow = TRUE) ## You can organize elements  based on by rows

print(my_matrix) ## You see the elements are organized by rows

? matrix # learn more aboutr matrixx

# accessing to a matrix contents

my_matrix[1,3] ## get first value at row = 1 and column = 3
my_matrix[1,] ## get first row 
my_matrix[,1] ## get first column 



#### 3: making a dataframe

names = c('a','b','c','d') ##item 1
IQ = c(120, 125, 110, 114) ##item 2
weight = c(80, 85, 65, 100) ##item 3

my_dataframe = data.frame(names, IQ, weight)

print(my_dataframe)



### Accessing to a dataframe contents

my_dataframe['names'] # getting names item

my_dataframe$names. ## getting the contents of names item



### 4: making a list (items can have unequal sizes)

names = c('a','b','c','d','e','f', 'g','h','i') ##item 1
IQ = c(120, 125, 110, 114, 118) ##item 2
weight = c(80, 85, 65, 100) ##item 3

my_list = list(names, IQ, weight)

print(my_list)

### Accessing to a dataframe contents

my_list[1] # getting first item

my_list[[1]] # getting first item contents




## change the type of variables in R which simply called coercion!

## Coercion

y = c(TRUE, 2)   ## numeric coercion
y = c(FALSE,TRUE,TRUE,TRUE,TRUE,5,7, 2)   ## numeric coercion
y = c(1.7, "a")  ## character coercion
y = c("a", TRUE) ## character coercion

## Conversion
x = 0:9
class(x)
y = as.numeric(x)  ##  explicitly convert the class of one object to numeric
class(y)

y = as.logical(x) ##  explicitly convert the class of one object to logical
class(y)

y = as.character(x) ##explicitly convert the class of one object to character
class(y)

# make the following string vector

x = c("a", "b", "c")
# Check the following conversion.
as.numeric(x) 
# Check the following conversion.
as.logical(x) 

# as you see, it is impossble to convert a character data type to numeric or logical type



rm(list =ls()) ## clear all variables


############################################### II:Operators

x = 15
y = 5

#### Arithmetic operators
##  +	addition
##  -	subtraction
##  *	multiplication
##  /	division
##  ^ or **	exponentiation
##  x %% y	modulus (x mod y) 5 %% 2 is 1
x + y
x - y
x * y
x / y
x ^ 3
x %% y
x %% 2

#### Relational operators

##  <	less than
##  <=	less than or equal to
##  >	greater than
##  >=	greater than or equal to
##  ==	exactly equal to

print(x < 10) ## if x is less than 10, it prints TRUE other wise FALSE
print(x <= 10) ## if x is less than or equal to  than 10, it prints TRUE other wise FALSE
print(x > 10) ## if x is greater than 10, it prints TRUE other wise FALSE
print(x >= 10) ## if x is greater than or equal to 10, it prints TRUE other wise FALSE
print(x == 10) ## if x is exactly equal to 10, it prints TRUE other wise FALSE

#### logical operators

##  !=	not equal to
##  &   and condition
##  |   or condition


print(x != 10) ## if x is not equal to 10, it prints TRUE otherwise FALSE

print ( x > 10 & y < 10 ) ## if both x is greater than 10 and y is less than 10, it prints TRUE otherwise FALSE

print ( x > 10 | y < 10 ) ## if either x is greater than 10 or y is less than 10, it prints TRUE otherwise FALSE

############################################### III: Control flows


## if structure is as folllowing:
## if(condition) {statement}

x = seq(1,100, 5) # Making a sequence of numbers from 1 to 100 by increment of 5.
mean(x)


## All of the following scripts, check if the mean value of vector x is lower than a specified number and print a sentence or a value according to its number value.

if( mean(x) < 50 ) { print("Yes. The mean is lower than 50") }

if( mean(x) > 50 ) { print("Yes. The mean is lower than 50") }

if( -1 < mean(x) ) { print("Yes. The mean is greater than -1") }

if( mean(x) == 0 ) {print("Yes")}

if( mean(x) != 0 ) {print("Yes")}

if( mean(x) < 50 ) {2}



## ifelse (test,yes,no)

ifelse( mean(x) < 1, yes = 1 , no = 2 )

y = log( c(3,0.5,2,4) )
ifelse(y < 0, NA, y)


##  if (condition) statement1 else statement2

if( mean(x) > 0 ) y = 1  else y = 2

print(y)

##  if (condition) {statement1} else {statement2}

if( mean(x) < 0 ) {y = 1 ; y = y + 1} else {y = 2; y = y * 8}
print(y)


## An example for if else structure.
customer = 'A'
price = 100

if(customer=='A'){
  tot.price = price * 1.12      # 12%
} else {
  if(customer=='B'){
    tot.price = price * 1.06    # 6% 
  } else {
    tot.price = price * 1       # 0%
  }
}

tot.price



### Loop structure

# for(loop_variable in start:stop) {}

## print the values of 1 up to 10. 

for(i in 1:10){
  print(i)
}


x = runif(10 , 0 , 1)
x

for(i in 1:10){
  print( x[i])
}



## Print the difference of two consecutive numbers in vector x
for(i in 2:10){
  print( x[i] - x[i-1] )
}


## Add the constant value 1 to each element of vector x

for(i in 1:10){
  print(x[i] + 1)
}



x = runif(1000, min = 5 , max = 10) ## make a random uniform distribution of 1000 numbers

y = numeric(1000) ## make a vector of 1000 zeros

for(i in 2:1000){
  y[i] =  x[i] / x[i-1]
}
plot(y)
plot(log(y))

## Grid the plot panel in order to create multiple plots in the same panel
par( mfrow = c(2,1) )
plot(y)
plot(log(y))


dev.off() ## clear the plots by this command

## example 1 : for  (loop)
## find the mean value of each column in mat matrix

n = 100 * 100
x = runif(n , min = 0 ,max  =  1)
mat = matrix(x , 100 , 100 , TRUE)

res = numeric( ncol(mat) )
for(i in 1:ncol(mat)){
  res[i] = mean(mat[,i])
}

plot(res , col = "red")
mean(res)



## example 2 : for  (loop)
## find the transpose of a matrix

x = runif(100 , 0 , 1)
mat = matrix(x , 10 , 10 , TRUE)

t_mat = matrix(0 , nrow(mat) , ncol(mat) )
for(i in 1:nrow(mat)){
  
  for(j in 1:ncol(mat)){
    t_mat[i,j] = mat[j,i]
  }
}

t_mat

t_mat[1,4] == mat[4,1]
t_mat == t(mat)


## break in a loop

for(i in 1:10){
  print(i)
  if(i>=6){break}
}


## while structure

## print i value while the value is lower than 10
i = 1
while(i < 10)
{
  print(i)
  i = i + 1
}


## print values of x while it is lower than 5 and it is not equal to 3
x = 1
while(x < 5) {x = x+1; if(x == 3) next; print(x);}



## An Example

nuclotide = c("A" , "T" , "C" ,"G") ## Elements of DNA

p = c( 1/4, 1/4, 1/4, 1/4)

DNA = sample(nuclotide , 1000 , replace = TRUE, prob = p)

str(DNA)
DNA[1]
DNA[24]

A = c()
for(i in 1:1000){
  
  if(DNA[i] == "A") {A = c(A,i)}
}
print(A)



B  <- c()

for (i in 1:1000){
  if(DNA[i] == "A") {B[i]= i} 
}
print(B)


T = c()
for(i in 1:1000){
  
  if(DNA[i] == "T") {T = c(T,i)}
}


C = c()
for(i in 1:1000){
  
  if(DNA[i] == "C") {C = c(C,i)}
}


G = c()
for(i in 1:1000){
  
  if(DNA[i] == "G") {G = c(G,i)}
}


length(A) / length(DNA)
length(T) / length(DNA)
length(C) / length(DNA)
length(G) / length(DNA)



A = c()
T = c()
G = c()
C = c()
for(i in 1:1000){
  
  if(DNA[i] == "A") {A = c(A,i)}
  if(DNA[i] == "T") {T = c(T,i)}
  if(DNA[i] == "C") {C = c(C,i)}
  if(DNA[i] == "G") {G = c(G,i)}
  
}


length(A) / length(DNA)
length(T) / length(DNA)
length(C) / length(DNA)
length(G) / length(DNA)


rm(list =ls()) ## clear all variables

############################################### IV: User-defined Functions

## A user-defined function is as following:
## if(condition) {statement} 

x = runif(100 , -1, 1)

########
My_Mean_Function = function(x){mean(x)}
My_Sum_Function = function(x){sum(x)}

My_Mean_Function(x)
mean(x)

My_Sum_Function(x)
sum(x)


########
myf = function(x , ...){hist(x , ...)} ## use ,... in your function to make it more flexible

myf(x)

myf(x , breaks = 10, col = "orange", main = "", xlab = "X values" , ylab = "Frequency"). ## add more features

########

Suared_root = function(x){
  result = sqrt(x)
  return(result)
}

Suared_root(100). ## Use your function to compute the square root of 100


rm(list =ls()) ## clear all variables



