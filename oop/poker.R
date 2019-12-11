shuffle <- function(deck) {
    deck <- deck[sample(nrow(deck)),]
    rownames(deck) <- 1:nrow(deck)
    deck
}

generate_deck <- function(numberOfJokers = 0) {
    suits <- c("C", "D", "H", "S")
    deck <- data.frame(rep(1:13, 4), as.character(suits), stringsAsFactors=FALSE)
    names(deck) <- c("value", "suit") 

   if (numberOfJokers > 0) {
       for (i in 1:numberOfJokers) {
	    deck <- rbind(deck, c("0", "Joker"))
	}
   }
   deck$suit <- as.factor(deck$suit)
   deck
}

