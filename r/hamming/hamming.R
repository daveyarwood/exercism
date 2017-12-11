hamming <- function(strand1, strand2) {
  if (nchar(strand1) != nchar(strand2))
    stop("Strands must be the same length.")

  chars1 <- strsplit(strand1, "")[[1]]
  chars2 <- strsplit(strand2, "")[[1]]
  pairs <- mapply(list, chars1, chars2, SIMPLIFY=FALSE)

  return(Reduce(function(sum, pair)
                  if(identical(pair[[1]], pair[[2]]))
                    sum
                  else
                    sum + 1,
                pairs,
                0))
}
