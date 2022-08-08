library(tidyverse)
data("who")
names(who)

# Si por algún motivo necesito cambiar nombres de  las cuatro primeras
# columnas: country por pais, iso2 por variable2, iso3 por variable 3,
# y year por año:

who <- who %>% 
  rename(pais = country,
         variable2 = iso2,
         variable3 = iso3,
         año = year)

names(who) # revisa el cambio realizado

# Si lo quieres hacer con código básico, sin tidyverse, sería
# (puse nombres raros para que notes el cambio):

names(who)[1:4] <- c("PPais", "VVariable2", "VVariable3", "AAño")

names(who) # revisa el cambio realizado
