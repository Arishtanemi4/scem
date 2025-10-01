# Summation of numbers divisible by 2 or 7
sum_func = function(num){
  
  # Stop if the input is not a non-negative integer
  stopifnot(is.numeric(num), num %% 1 == 0, num >= 0)

  # Initalizing Sum variable
  sum_var = 0

  # Looping to sum numbers divisible by 2 or 7
  for(i in 0:num){

    # Check if number is eiter divisible by 2 or 7
    if((i %% 2 == 0) || (i %% 7 == 0)){
      sum_var = sum_var + i
    }

    # If not divisible retain the value
    else{
      sum_var = sum_var + 0
    }
  }

  return(sum_var)
}

sum_func(1000)
