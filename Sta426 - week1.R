install.packages("ggplot2")
library(ggplot2)

a <- rlnorm(n = 100, meanlog = 5, sdlog = 0.5)

data=data.frame(value=a)

hg <- ggplot(data, aes(x=value)) +
  geom_histogram(bins = 100, fill = 'sienna3', color = 'sienna') +
  ggtitle("Histogram - linear scale")
hg

lg <- ggplot(data, aes(log(x=value))) +
  geom_histogram(bins = 100, fill = 'orchid3', color = 'orchid4') +
  scale_x_log10() +
  ggtitle("Histogram - log scale")
lg 

vp <- ggplot(data, aes(x = value, y = 1)) +
  geom_violin(fill = "lightcyan3", color = "skyblue4") +
  geom_boxplot(width = 0.2, fill = "lavenderblush1", color = "lavenderblush4") +
  labs() +
  coord_flip() +
  ggtitle("Violin Plot") +
  theme(aspect.ratio = 1.7)
vp

