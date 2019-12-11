int_to_string <- function(x) {
   c("en", "to", "tre", "fire", "fem",
     "seks", "syv", "otte", "ni", "ti")[x]
}

gt <- function(a, b) { a > b }
is_even <- function(x) { x %% 2 == 0 }
square <- function(x) { x^2 }

add_talk <- function(x, y) {
  message("x is ", x)
  message("y is ", y, "\n")
  x + y
}

paste_talk <- function(x, y) {
  message("x is ", x)
  message("y is ", y, "\n")
  paste0(x, y)
}

set.seed(42)
random_ints <- sample(c(seq(21, 101, 2), c(6, 8, 10)))

