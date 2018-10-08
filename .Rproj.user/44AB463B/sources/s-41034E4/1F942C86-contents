dir.create('graphics/Exercicio2')
adsData <- read.csv("dados/exercicio2.csv")

library(ggplot2)

#Frequencia Absoluta
png(filename = "graphics/Exercicio2/exercicio2-desviopadrao.png", width = 480, height = 480)
frequencia <- data.frame(table(adsData$Casas))
ggplot(frequencia, aes(x=Var1, y=Freq)) +
  geom_point(col="black") +
  ylab("Frequência Absoluta") + xlab("Casa") +
  ggtitle("Exercício 2 - Frequência Absoluta")
dev.off()

#Frequencia Relativa
png(filename = "graphics/Exercicio2/exercicio2-desviopadrao.png", width = 480, height = 480)
freq_rel <- data.frame(prop.table(table(adsData$Casas))*100)
ggplot(freq_rel, aes(x=Var1, y=Freq)) +
  geom_point(col="black") +
  ylab("Frequência Relativa em %") + xlab("Casa") +
  ggtitle("Exercício 2 - Frequência Relativa")
dev.off()

moda <- function(v) {
  uniqv <- unique(v)
  uniqv[which.max(tabulate(match(v, uniqv)))]
}

png(filename = "graphics/Exercicio2/exercicio2-desviopadrao.png", width = 480, height = 480)
ggplot(adsData, aes(x=Casas, y="")) +
  geom_point(col="black") +
  ylab("") + xlab("Casas") +
  ggtitle("Exercicio 2 - Desvio Padrão") +
  geom_vline(xintercept = sd(adsData$Casas), col="red")  
dev.off()

png(filename = "graphics/Exercicio2/exercicio2-variancia.png", width = 480, height = 480)
ggplot(adsData, aes(x=Casas, y="")) +
  geom_point(col="black") +
  ylab("") + xlab("Casas") +
  ggtitle("Exercicio 2 - Variância") +
  geom_vline(xintercept = var(adsData$Casas), col="red")
dev.off()

png(filename = "graphics/Exercicio2/exercicio2-media.png", width = 480, height = 480)
ggplot(adsData, aes(x=Casas, y="")) +
  geom_point(col="black") +
  ylab("") + xlab("Casas") +
  ggtitle("Exercício 2 - Média") +
  geom_vline(xintercept = mean(adsData$Casas), col="red")
dev.off()

png(filename = "graphics/Exercicio2/exercicio2-mediana.png", width = 480, height = 480)
ggplot(adsData, aes(x=Casas, y="")) +
  geom_point(col="black") +
  ylab("") + xlab("Casas") +
  ggtitle("Exercício 2 - Mediana") +
  geom_vline(xintercept = median(adsData$Casas), col="red")
dev.off()

png(filename = "graphics/Exercicio2/exercicio2-moda.png", width = 480, height = 480)
ggplot(adsData, aes(x=Casas, y="")) +
  geom_point(col="black") +
  ylab("") + xlab("Casas") +
  ggtitle("Exercicio 2 - Moda") +
  geom_vline(xintercept = moda(adsData$Casas), col="red")  
dev.off()