library("tidyverse")
library("edbuildr")
library("readxl")

### import school distirctr table
sd18 <- masterpull(data_type="geo") %>% 
  filter(!is.na(StPovRate),
         !is.na(LRPP))

nrow(sd18)

ggplot(sd18, aes(LRPP, StPovRate)) +
  scale_x_continuous(limits = c(0, 50000)) +
  geom_point()
       
