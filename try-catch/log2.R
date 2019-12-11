inputs <- list(1, 2, 4, -5, 'oops', 0, 10)

for (input in inputs) {
    try(
	print(paste("log of", input, "=", log(input)))
    )
}
