## Comments can be written with # which makes the rest of the line a comment

## Basic math 
#print(2 + 999)
print(3 * 23)
print(51 / 3) 
print(2^10)
print(12345689 %% 2) # integer divide
## >=, <=, ==, >, < are comparisons between numbers
#print(3^4 < 4^3 )
#print(3 + 2 +1 == 6)

## Bools 
print( TRUE || FALSE ) # inclusive Or operation(true if one is true)
print( TRUE && FALSE) # And operation(true is both are true)
print( !TRUE) # Not operation (True is argument is false)
## Strings 

print("Hello world")
# Strings are in " "s 

## Converting Types 
## as.type(arg) 
print(as.character(2))
print(as.complex((2)))
print(as.integer((TRUE)))
## Variables 
pi <- 3.1415 
radius <- 6 
area <- pi * radius^2 
print(area)
# Lets change the number of digits 
area_approx <- format(area, digits=3)
print(as.numeric( area_approx))


## Vectors 
vec <- c(2,3,1,5)

# Accessing and assignment
#print(vec[1]) # First Element 
#vec[2] = 17 
#print(vec[-1]) # All but the first element 

#print(sum(vec))
#print(var(vec))

## Comparisons 
vec <- 1:10
filtered <- vec > 5
print(filtered)
print(vec[filtered])
## Generators 
vec1n <- 1:10 
print(vec1n)
print(3*vec1n)
## Demo Seq live 
# Try ?seq 
## Matrices 
# R fills in data column by column by default
# Try these both and make sure you see the difference
M <- matrix(1:16, nrow=4, ncol=4) 
print(M)
M <- matrix(1:16, nrow=4, ncol=4, byrow=TRUE) 
print(M)
## Transpose 
print(t(M))

#Accessing 
print(M[2,3])
# Matrix addition 
print(M + M)
# Matrix multiplication 
print(M %*% M) 
# Matrix component wise multiply 
# i.e. M[1,1]*M[1,1], M[1,2]*M[1,2], ... 
print(M*M) 
#print(t(M))

# Mean and variance 
print(mean(M))
print(var(M * M)) ## THis is the covariance of M where each row is a sample 


## Loops 
total = 0 
for(i in 1:15){ 
  total <- total + i^2
}
print(total)
two_powers <- 0
while (total >= 2){
  total <- total/2 
  two_powers <- two_powers + 1 
}
print(two_powers)


## Conditions 
odds <- c()
sumEvens <- 0 
count <- 1
for(i in 1:30){
  if( i %% 2 == 1 ){
    odds[count] = i
    count <- count + 1
  } else {
    sumEvens <- i + sumEvens
 }
}
print(odds)

## Importing data 

DailyTemp <- read.csv("DailyDelhiClimate.csv", header=TRUE )
print(summary(DailyTemp$meantemp))
## DailyTemp$meantemp looks at the column "meantemp" in the 
## DailyTemp data and computes some statistics about it
#print(summary(DailyTemp$meantemp)) 
plot(DailyTemp$meantemp, main="Daily Mean Temperatures", xlab="Day Number", ylab="Temperature")
## Let's learn about plot style options 
#plot(DailyTemp$meantemp, type="l", main="India Daily Temps", ylab="Temp(C)", xlab="Day")

## Random Variables
### In R random variable functions use prefixes on the same distriubtion 
## Consider an expontential random variable with rate 2
sample <- rexp(10000, 2) 
# This generates 10000 samples
#cdf <- pexp(3, 2) # CDF of three 
#density <- dexp(3,2)
#quantile <- qexp(0.1, 2)
#print(cdf)
#print(density)
#print(quantile)
hist(sample,breaks=20,freq=FALSE)
count = 1
xs = c()
actual = c()
for(i in  seq(0,5,length.out=20)){
  actual[count] = exp(-2*i)
  xs[count] = i
  count <- count + 1 
}
lines(actual ~ xs, col="red", lw=2, type="p")

## Time permits NA vs NaN
# NaN is short for "Not a Number", special value for stuff like 0/0
# R also has NA short for not applicable as a value for missing data 
# Comparisions between NA and any number X is NA 
print(NA >= 5)
x <- NA 
print(x == NA) 
## This is a non-example. It probably doesn't do what you want
print(is.na(x))
