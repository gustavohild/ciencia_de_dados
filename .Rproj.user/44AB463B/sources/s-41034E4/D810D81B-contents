adsData <- read.csv("dados/exercicio3.csv")
dir.create('graphics/Exercicio3')

library(ggplot2)

moda <- function(v) {
  uniqv <- unique(v)
  uniqv[which.max(tabulate(match(v, uniqv)))]
}

png(filename = "graphics/Exercicio3/exercicio3-mediana.png", width = 480, height = 480)
ggplot(adsData, aes(x=Numero.de.filhos, y="")) +
  geom_point(col="black") +
  ylab("") + xlab("Numero de Filhos") +
  ggtitle("Exercício 3 - Mediana") +
  geom_vline(xintercept = median(adsData$Numero.de.filhos), col="red")
dev.off()

png(filename = "graphics/Exercicio3/exercicio3-moda.png", width = 480, height = 480)
ggplot(adsData, aes(x=Numero.de.filhos, y="")) +
  geom_point(col="black") +
  ylab("") + xlab("Numero de Filhos") +
  ggtitle("Exercício 3 - Moda") +
  geom_vline(xintercept = median(adsData$Numero.de.filhos), col="red")
dev.off()