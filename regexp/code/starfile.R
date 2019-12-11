lines <- readLines("../datafiles/starfile") 

expression1 <- "[[:digit:]]"
expression2 <- "son$"
expression3 <- "^A.*b$"
expression4 <- "^([^*]*\\*){3}[^*]*$"


grep(expression1, lines)
grep(expression2, lines)
grep(expression3, lines)
grep(expression4, lines)


