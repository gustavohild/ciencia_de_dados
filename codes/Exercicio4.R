dir.create('graphics/Exercicio4')
adsData <- read.csv("dados/exercicio4.csv")

freq <- table(cut(adsData$Salarios, breaks=c(5, 6, 7, 8, 9, 10, 11, 12), 
                  labels=c("5 - 6", "6 - 7", "7 - 8", "8 - 9", "9 - 10",
                           "10 - 11", "11 - 12"), right=FALSE))
data <- data.frame(freq)

png(filename = "graphics/Exercicio4/exercicio4-freq_absoluta.png", width = 480, height = 480)
#Converter os tipos
ggplot(data, aes(x=Var1, y=Freq)) +
  geom_point(col="black") +
  ylab("Frequência Absoluta") + xlab("Salário") +
  ggtitle("Exercício 4 - Frequência Absoluta")
dev.off()

data <- data.frame(prop.table(freq)*100)

png(filename = "graphics/Exercicio4/exercicio4-freq_refelativa.png", width = 480, height = 480)
ggplot(data, aes(x=Var1, y=Freq)) +
  geom_point(col="black") +
  ylab("Frequência Relativa em %") + xlab("Salário") +
  ggtitle("Exercício 4 - Frequência Relativa")
dev.off()

png(filename = "graphics/Exercicio4/exercicio4-histograma.png", width = 480, height = 480)
hist(adsData$Salarios,  main = "Histograma", labels = TRUE, 
     col = c("blue", "green", "red", "lavender", "mistyrose", "cornsilk", "purple", "yellow"),
     ylab = "Frequência", xlab = "Dados")
dev.off()
