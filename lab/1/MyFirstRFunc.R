# This example function takes as input a positive integer and outputs Boolean
is_prime <- function(num){
  # Stop if the input is not a non-negative integer
  stopifnot(is.numeric(num), num %% 1 == 0, num >= 0)
  # Initialise truth value output with TRUE
  t_val <- TRUE
  if(num < 2){
    # Output FALSE if input is either 0 or 1
    t_val <- FALSE
  } else if (num > 2){
    # Check possible divisors i no greater than sqrt(num)
    for(i in 2:sqrt(num)){
      if(num %% i == 0){
        # if i divides num then num is not prime
        t_val <- FALSE
        break
      }
    }
  }
  # return the truth value which says whether or not num is prime
  return(t_val)
}