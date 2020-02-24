library(magrittr)

set.seed(1)

personer <- c("Anders", "Bent", "Casper")
fag <- c("Matematik", "Dansk", "Fysik")
karakter <- c("00","03","5","6","7","8","9","10","11","13")

karakter_report <- data.frame(
	person   = rep(personer, 3),
	fag      = gl(3, 3, labels = fag),
	skala_13 = sample(karakter, 9, replace = TRUE)
)

karakter_report %<>% mutate(
    skala_12 = factor(case_when(
        skala_13 == "11" | skala_13 == "13" ~ "12",
        skala_13 == "10"                    ~ "10",
        skala_13 == "9"  | skala_13 == "8"  ~ "7",
        skala_13 == "7"                     ~ "4",
        skala_13 == "6"                     ~ "02",
        skala_13 == "5"  | skala_13 == "03" ~ "00",
        skala_13 == "00"                    ~ "-3")))

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

