library(ggplot2)
library(ggthemes)

circleFunc <- 
  function(center = c(0,0), diameter = 1, npoints = 200, start = 0, end = 2*pi) {
    tt <- seq(start, end, length.out = npoints)
    data.frame(x = center[1] + diameter / 2 * cos(tt),
               y = center[2] + diameter / 2 * sin(tt))
  }

p <- ggplot(circleFunc(), aes(x,y))
p <- p + geom_polygon(fill = "white", color = "black")
p <- p + geom_polygon(aes(x/2, y/2), fill = "black", color = "white")
p <- p + geom_polygon(aes(x/3, y/3), fill = "white", color = "black")
p <- p + geom_polygon(aes(x/4, y/4), fill = "black", color = "white")
p <- p + geom_polygon(aes(x/5, y/5), fill = "white", color = "black")
p <- p + geom_polygon(aes(x/6, y/6), fill = "black", color = "white")
p <- p + geom_polygon(aes(x/7, y/7), fill = "white", color = "black")
p <- p + ggtitle("Cirkel sjov")
p <- p + theme(axis.title.y = element_text(angle=0,vjust = 0.5)) 
p <- p + theme_hc()
p

