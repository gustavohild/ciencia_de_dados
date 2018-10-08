dir.create('graphics/Exercicio4')

adsData <- read.csv("dados/exercicio4.csv")

png('graphics/Exercicio4/exercicio4-histograma.jpg')
hist(adsData$Salarios,  main = "Histograma", labels = TRUE, 
     col = c("blue", "green", "red", "lavender", "mistyrose", "cornsilk", "purple", "yellow"),
     ylab = "Frequência", xlab = "Dados")
dev.off()
