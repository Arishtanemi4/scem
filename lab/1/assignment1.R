# Animals df
animals = c(
  "Snake", "Ostrich", "Cat", "Spider"
)

# Legs df
num_legs = c(
  0, 2, 4, 8
)

# Combined animals df
animals_df = data.frame(
  animals, num_legs
)

# Print animals df
animals_df

# Data type of variables
typeof(animals)
typeof(?um_legs)
typeof(animals_df)



# Copying Assignment example
city_name <- c( "Bristol", "Manchester", "Birmingham", "London") # vector ofcity names
population <- c(0.5, 0.5, 1, 9) # vector of approximate populations (inmillions of people)
cities_populations?df <- data.frame(city_name, population) # data frame

# Checking usage of ls()
# ?ls()

# Calling ls()
ls()

# Checking usage of rm()
# ?rm()

# Calling rm() and removing num_legs
rm(num_legs)
ls()

# Removing all objects
rm(list=ls())
ls()

# 5: Matrix Mu?tiplication
# ?seq()

# generate matrix
x_vect = seq(12, 2, -2)
x_vect

X = matrix(x_vect, 2, 3)
X

y_vect = seq(1, 4, 1)
Y = matrix(y_vect, 2, 2)
Y

z_vect = seq(4, 10, 2)
Z = matrix(z_vect, 2, 2)
Z

# matrix Transpose
Yt = t(Y)
Yt
Zt = t(Z)
Zt

# Matrix ?um
YplusZ = Y + Z
ZplusY = Z + Y

YplusZ
ZplusY

# Matrix Multiplication
YxZ = Y%*%Z
ZxY = Z%*%Y

YxZ
ZxY

YxX = Y%*%X
XxY = X%*%Y


# Matrix inverse
Yinv = solve(Y)
Yinv

YinvxY = Yinv %*% Y
YinvxY

YinvxX = Yinv %*% X
YinvxX

# Some part of 5 is remainin? here regarding checking the inverse mul of YinvxX

# Can you do this (obtain the results of ???????1????) without first computing ???????1? Try running the
# help command on the solve() function by typing ?solve into the R console to find out how
# to do this.

YinvXwithoutYinv = solve(Y) %*% X
YinvXwithoutYinv