factors <- function(n) {
  rt <- c()
  f <- 2
  if (n == 1) {
    rt <- c(rt, 1)
  } else {
    while (1) {
      if ((n %% f) == 0) {
        rt <- c(rt, f)
        n <- floor(n / f)
        if (n == 1) {
          return(rt)
        }
      } else {
        f <- f + 1
      }
    }
  }
  return(rt)
}

sum_digits <- function(n) {
  sum <- 0
  while (n > 0) {
    m <- n %% 10
    sum <- sum + m
    n <- n - m
    n <- floor(n / 10)
  }
  return(sum)
}

add_all_digits <- function(lst) {
  sum <- 0
  for (i in 1:length(lst)) {
    sum <- sum + sum_digits(lst[i])
  }
  return(sum)
}

Find_smith_nums <- function(cnt) {
  list_smith_nums <- lapply(4:cnt, function(x) {
    fac <- factors(x)
    if (length(fac) > 1) {
      if (sum_digits(x) == add_all_digits(fac)) {
        list_smith_numbers <- x
      }
    }
  })
  return(unlist(list_smith_nums))
}

result <- Find_smith_nums(1000)
print(result)