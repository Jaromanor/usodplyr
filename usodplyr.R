library(dplyr)
library(ggplot2)
View(bdd1)

prueba1 <- as_tibble(bdd1)

frecuencias <- prueba1 %>% 
  select(SEXO,COLEGIO) %>% 
  group_by(COLEGIO) %>%
  count(SEXO,COLEGIO) %>%
  mutate(prop=paste(round(prop.table(n)*100,2),"%",sep=""))
