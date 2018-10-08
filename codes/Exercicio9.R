adsData <- read.csv("dados/exercicio9.csv")
dir.create('graphics/Exercicio9')

library(ggplot2)

freq <- table(cut(adsData$Salarios, breaks=c(4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24), 
                  labels=c("4 - 6", "6 - 8", "8 - 10", "10 - 12", "12 - 14",
                           "14 - 16", "16 - 18", "18 - 20", "20 - 22", "22 - 24"), right=FALSE))
data <- data.frame(freq)

png(filename = "graphics/Exercicio9/exercicio9-freq_absoluta.png", width = 480, height = 480)
#Converter os tipos
ggplot(data, aes(x=Var1, y=Freq)) +
  geom_point(col="black") +
  ylab("Frequência Absoluta") + xlab("Salario") +
  ggtitle("Exercício 9 - Frequência Absoluta")
dev.off()

data <- data.frame(prop.table(freq)*100)

png(filename = "graphics/Exercicio9/exercicio9-freq_refelativa.png", width = 480, height = 480)
ggplot(data, aes(x=Var1, y=Freq)) +
  geom_point(col="black") +
  ylab("Frequência Relativa em %") + xlab("Salario") +
  ggtitle("Exercício 9 - Frequência Relativa")
dev.off()

png(filename = "graphics/Exercicio9/exercicio9-histograma.png", width = 480, height = 480)
hist(adsData$Salarios,  main = "Exercicio 9 - Histograma", labels = TRUE, 
     col = c("blue", "green", "red", "lavender", "mistyrose", "cornsilk", "purple", "yellow"),
     ylab = "Frequência", xlab = "Salario")
dev.off()

