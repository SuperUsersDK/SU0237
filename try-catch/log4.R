inputs <- list(1, 2, 4, -5, 'oops', 0, 10)

robustLog <- function(num) {
    tryCatch( log(num), 
		warning = function(warn) {
		    print(paste("negative argument", num))
		    NaN
		},
		error = function(err) {
		    print(paste("non-numeric argument", num))
		    NaN
		}
	    )
}

for (input in inputs) {
    print(paste("log of", input, "=", robustLog(input)))
}


