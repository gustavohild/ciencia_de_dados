install.packages("qcc");

adsData <- read.csv("dados/exercicio6.csv")
dir.create('graphics/Exercicio6')

library(qcc)

png(filename = "graphics/Exercicio6/exercicio6-pareto.png", width = 480, height = 480)
names(adsData$NÂº.pessoas) = adsData$Qualidade
pareto.chart(adsData$NÂº.pessoas, ylab = "Numero de pessoas", xlab = "Qualidade", 
             ylab2 = "Porcentagem acumulada", main = "Exercício 6", col = "red")
dev.off()
