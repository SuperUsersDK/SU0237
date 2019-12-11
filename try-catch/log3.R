inputs <- list(1, 2, 4, -5, 'oops', 0, 10)

for (input in inputs) {
    tryCatch(
	print(paste("log of", input, "=", log(input))), 
		warning = function(warn) {
		    print(paste("negative argument", input))
		},
		error = function(err) {
		    print(paste("non-numeric argument", input))
		    NaN
		}
	    )
}



