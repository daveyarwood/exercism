# I don't understand why this isn't working. When I try the individual components in the R REPL, it seems to do the right thing. Yet, the tests fail. wat

sortString <- function(str) {
  chars <- strsplit(str, NULL)[[1]]
  return(paste(sort(chars), collapse=''))
}

anagram <- function(subject, candidates) {
  sortedSubject <- sortString(subject)
  return(Filter(function(candidate)
                  identical(sortString(candidate), sortedSubject),
                candidates))
}
