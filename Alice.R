findMaxarray <- function(Arr) {
  m <- min(Arr)
  id <- grep(m, Arr)
  
  for(i in id) {
    L <- i
    R <- i
    
    while(L - 1 > 0 && Arr[,L - 1] > m) {
      L <- L - 1
    }
    
    while(R + 1 <= length(Arr) && Arr[,R + 1] > m) {
      R <- R + 1
    }
    print(Arr[,L:R])
  }
}

A <- array(c(1, 1, 2, 3, 5, 1, 2), dim = c(1, 7))
B <- array(c(1, 3, 2, 8, 4, 1, 7), dim = c(1, 7))

findMaxarray(A)