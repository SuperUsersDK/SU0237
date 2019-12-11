library(raster)
library(ggplot2)

pulsar = function(n){
  x = seq(0,100, length=n)
  norms = dnorm(x, mean=40, sd=6)*100 + dnorm(x, mean=60, sd=6)*50
  noise1 = approx(sample(c(rep(0:8,2),18:19)), n = n, y=NULL)$y
  noise2 = approx(sample(0:50), n = n, y=NULL)$y
  noise3 = rnorm(n)
  abs(norms + norms * noise1 + norms * noise2 * .1 + noise3)
}

d = apply(sapply(rep(100,50), pulsar), 1, rev)
d = data.frame(rasterToPoints(raster(d)))
d$elev = d$layer + d$y * 1200

p = ggplot() + 
  labs(x = 'UNKNOWN PLEASURES', y = NULL, title = 'JOY DIVISION') + 
  theme_minimal() +
  theme(axis.ticks = element_blank(),
        panel.grid = element_blank(),
        axis.text = element_blank(),
        plot.background = element_rect(fill = "black"),
        plot.title = element_text(colour = 'white', size = 76, hjust = .5),
        axis.title.x = element_text(colour = 'white', size = 43))

for(g in unique(d$y)){
  dat = subset(d, y == g)
  p = p + geom_polygon(data=dat, aes(x, elev), fill='black') + 
    geom_line(data=dat, aes(x, elev), col='white', size=.5)
}
ggsave(filename = 'unknown_pleasures.png', plot = p, w=8, h = 8)
browseURL('unknown_pleasures.png')
