adsData <- read.csv("dados/exercicio8.csv")
dir.create('graphics/Exercicio8')

library(ggplot2)

freq <- table(cut(adsData$Altura, breaks=c(1.50, 1.55, 1.60, 1.65, 1.70, 1.75, 1.80, 1.85, 1.90), 
    labels=c("1.50 - 1.54", "1.55 - 1.59", "1.60 - 1.64", "1.65 - 1.69", "1.70 - 1.74",
             "1.75 - 1.79", "1.80 - 1.84", "1.85 - 1.90"), right=FALSE))
data <- data.frame(freq)

png(filename = "graphics/Exercicio8/exercicio8-freq_absoluta.png", width = 480, height = 480)
#Converter os tipos
ggplot(data, aes(x=Var1, y=Freq)) +
  geom_point(col="black") +
  ylab("Frequência Absoluta") + xlab("Altura") +
  ggtitle("Exercício 8 - Frequência Absoluta")
dev.off()

data <- data.frame(prop.table(freq)*100)

png(filename = "graphics/Exercicio8/exercicio8-freq_refelativa.png", width = 480, height = 480)
ggplot(data, aes(x=Var1, y=Freq)) +
  geom_point(col="black") +
  ylab("Frequência Relativa em %") + xlab("Altura") +
  ggtitle("Exercício 8 - Frequência Relativa")
dev.off()

png(filename = "graphics/Exercicio8/exercicio8-histograma.png", width = 480, height = 480)
hist(adsData$Altura,  main = "Exercicio 8 - Histograma", labels = TRUE, 
     col = c("blue", "green", "red", "lavender", "mistyrose", "cornsilk", "purple", "yellow"),
     ylab = "Frequência", xlab = "Altura")
dev.off()

