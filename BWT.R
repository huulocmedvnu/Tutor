a <- "banana"
words <- strsplit(a, split = "")[[1]]
lst <- c()
for (i in 1:length(words)) {
  suff <- strsplit(a, split = "")[[1]][length(words)]
  pre <- strsplit(a, split = "")[[1]][1:(length(words)) - 1]
  pre <- paste(pre, collapse = '')
  word <- paste0(suff, pre)
  a <- word
  lst <- c(lst, word)
}

sorted_lst <- sort(lst)


