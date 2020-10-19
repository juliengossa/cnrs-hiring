cr <- read.csv("postes-CR-CNRS.csv") %>% group_by(Année) %>% summarise(CR = sum(Postes))
cr1 <- read.csv("postes-CR-CNRS-Classe1.csv") %>% group_by(Année) %>% summarise(CR1 = sum(Postes))
cr2 <- read.csv("postes-CR-CNRS-Classe2.csv") %>% group_by(Année) %>% summarise(CR2 = sum(Postes))

postes <- merge(cr, merge(cr1,cr2, all=TRUE), all=TRUE)

write.csv(postes, file="postes-CNRS.csv", row.names = FALSE)
