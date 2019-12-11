# Tre cirkler

library(ggplot2)

circleFunc <- 
  function(center = c(0,0), diameter = 1, npoints = 200, start = 0, end = 2*pi) {
    tt <- seq(start, end, length.out = npoints)
    data.frame(x = center[1] + diameter / 2 * cos(tt),
               y = center[2] + diameter / 2 * sin(tt))
  }

radius <- 100
c1 <- circleFunc(diameter = radius*2)
c2 <- circleFunc(diameter = radius*2, center = c(radius,0))
c3 <- circleFunc(diameter = radius*2, center = c(radius/2, -sqrt(radius^2-(radius/2)^2)))
p <- ggplot(data = c1, aes(x,y))
p <- p + geom_polygon(fill = "white", color = "blue", alpha=0)
p <- p + geom_polygon(data = c2, aes(x,y),fill = "white", color = "red", alpha=0)
p <- p + geom_polygon(data = c3, aes(x,y),fill = "white", color = "green", alpha=0)
p <- p + theme_void()
p <- p + annotate("text", label = "Bank Robbers", x = -radius/2, y = radius/4, size = 5.8)
p <- p + annotate("text", label = "DJs", x = radius*1.5, y = radius/4, size = 5.8)
p <- p + annotate("text", label = "Preachers", x = radius/2, y = -radius*1.25, size = 5.8)
p <- p + annotate("text", label = "Put your hands up", x = radius/2, y = -radius/4)
p <- p + annotate("text", label = "Give me\nyour money", x = -radius/8, y = -radius/2)
p <- p + annotate("text", label = "Are you\nwith me?", x = radius*1.1, y = -radius/2)
p <- p + annotate("text", label = "Everybody on the floor", x = radius/2, y = radius/4)

p
