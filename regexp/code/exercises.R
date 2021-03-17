lines <- readLines("/home/bruger/su0237/datafiles/starfile") 

# linjer, der indeholder tal
# Outputtet skulle gerne være:
# [1] 1 2
expression1 <- ""

# linjer, der ender på son
# Outputtet skulle gerne være:
# [1]   6  13 248 604 649 694 978
expression2 <- ""

# linjer, der starter med A og slutter med b
# Outputtet skulle gerne være:
# [1] 56
expression3 <- ""

# linjer, der indeholder præcis tre *
# men ikke nødvendigvis lige efter hinanden
# Outputtet skulle gerne være:
# [1]   100  200  300  400  500  600  700  800  900 1000
expression4 <- ""

#grep(expression1, lines, value = TRUE)
grep(expression1, lines)

#grep(expression2, lines, value = TRUE)
grep(expression2, lines)

#grep(expression3, lines, value = TRUE)
grep(expression3, lines)

#grep(expression4, lines, value = TRUE)
grep(expression4, lines)

