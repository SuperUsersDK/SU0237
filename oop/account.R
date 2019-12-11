library(magrittr)

account <- function(owner = NULL) {
	if (is.null(owner)) stop("Owner can't be NULL")
	value <- list(owner = owner, saldo = 0)
	attr(value, "class") <- "account"
	value
}

balance <- function(obj) { UseMethod("balance") }

balance.account <- function(obj) {
	obj$saldo
}

deposit <- function(obj, amount) { UseMethod("deposit") }

deposit.account <- function(obj, amount) {
	obj$saldo <- obj$saldo + amount
	obj
}

print.account <- function(obj) {
	cat(paste("The owner is :",obj$owner,"\n"))
	cat("Saldo is:", obj$saldo, "\n")
}

A1 <- account("Martin")

A1 %>% 
   deposit(100) %>%
   deposit(200) %>% 
   deposit(400)

