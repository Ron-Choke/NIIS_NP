library(haven)
library(tidyverse)
dat <- read_sav("/Users/ronpichaic/Dropbox/Yang_dropbox/Research/AIEM/NIIS_NP/merge0304.SAV")
re_dat <- dat[,c(1,3,5,11,19,35,37,53,68,86,87)]
ggplot(data = re_dat)+
  geom_histogram(mapping = aes(x= LOS))

ggplot(data = re_dat, mapping =aes(x= LOS, colour = as.factor(FEMALE)))+
  geom_freqpoly(binwidth=0.1)+
  coord_cartesian(xlim = c(0,30))



#test trial