#install.packages("ggplot2");
adsData <- read.csv("dados/exercicio1.csv")
dir.create('graphics/Exercicio1')

library(ggplot2)


png(filename = "graphics/Exercicio1/exercicio1-media.png", width = 480, height = 480)
ggplot(adsData, aes(x=Taxas.de.juros, y="")) +
  geom_point(col="black") +
  ylab("") + xlab("Taxas de Juros") +
  ggtitle("Exercício 1 - Média") +
  geom_vline(xintercept = mean(adsData$Taxas.de.juros), col="red")
dev.off()
png(filename = "graphics/Exercicio1/exercicio1-mediana.png", width = 480, height = 480)
ggplot(adsData, aes(x=Taxas.de.juros, y="")) +
  geom_point(col="black") +
  ylab("") + xlab("Taxas de Juros") +
  ggtitle("Exercício 1 - Mediana") +
  geom_vline(xintercept = median(adsData$Taxas.de.juros), col="red")
dev.off()
png(filename = "graphics/Exercicio1/exercicio1-desviopadrao.png", width = 480, height = 480)
ggplot(adsData, aes(x=Taxas.de.juros, y="")) +
  geom_point(col="black") +
  ylab("") + xlab("Taxas de Juros") +
  ggtitle("Exercicio 1 - Desvio Padrão") +
  geom_vline(xintercept = sd(adsData$Taxas.de.juros), col="red")  
dev.off()
png(filename = "graphics/Exercicio1/exercicio1-variancia.png", width = 480, height = 480)
ggplot(adsData, aes(x=Taxas.de.juros, y="")) +
  geom_point(col="black") +
  ylab("") + xlab("Taxas de Juros") +
  ggtitle("Exercicio 1 - Variância") +
  geom_vline(xintercept = var(adsData$Taxas.de.juros), col="red")
dev.off()
png(filename = "graphics/Exercicio1/exercicio1-valorminimo.png", width = 480, height = 480)
ggplot(adsData, aes(x=Taxas.de.juros, y="")) +
  geom_point(col="black") +
  ylab("") + xlab("Taxas de Juros") +
  ggtitle("Exercicio 1 - Valor Mínimo") +
  geom_vline(xintercept = min(adsData$Taxas.de.juros), col="red") 
dev.off()
png(filename = "graphics/Exercicio1/exercicio1-valormaximo.png", width = 480, height = 480)
ggplot(adsData, aes(x=Taxas.de.juros, y="")) +
  geom_point(col="black") +
  ylab("") + xlab("Taxas de Juros") +
  ggtitle("Exercicio 1 - Valor Máximo") +
  geom_vline(xintercept = max(adsData$Taxas.de.juros), col="red")
dev.off()
png(filename = "graphics/Exercicio1/exercicio1-quartis.png", width = 480, height = 480)
ggplot(adsData, aes(x=Taxas.de.juros, y="")) +
  geom_point(col="black") +
  ylab("") + xlab("Taxas de Juros") +
  ggtitle("Exercicio 1 - Quartis") +
  geom_vline(xintercept = quantile(adsData$Taxas.de.juros), col="red") 
dev.off()