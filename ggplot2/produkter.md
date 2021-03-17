# Undersøgelse af salgstal for tre versioner af et produkt.

## Filen salg.xlsx indeholder salgstal basseret på datoer for tre versioner af samme produkt.

* 2008 lanceres produktet med en version 1. 

* 2012 udkommer version 2

* 2016 udkommer version 3

## Opgaver

1. Indlæs salg.xlsx i en data-frame vha. "Import Dataset" menuen i R-Studio eller brug funktionen readxl::read_excel()
2. Konverterer det indlæste fra wide til long-format.
3. Fjern evt. na'er
4. Afbild de tre versioner i en graf med forskellige farver, så du får noget der ligner dette:
5. For at få datoer på X-aksen kan du bruge scale_x_date(breaks = seq(as.Date("2008-01-01"), as.Date("2020-01-01"), "2 quarter"))
6. Afprøv forskellige temaer fra ggthemes-pakken.
7. For at dreje teksten på X-aksen kan du bruge: theme(axis.text.x = element_text(angle = -90, vjust = 0.5)
8. For at fjerne titlen på X-aksen og på legend kan du tilføje: axis.title.x = element_blank(), legend.title = element_blank() 
9. Afprøv forskellige temaer fra ggthemes-pakken.

 
![1.png][produkter1]


[produkter1]: https://raw.githubusercontent.com/SuperUsersDK/SU0237/master/ggplot2/produkter.png
