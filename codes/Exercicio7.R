adsData <- read.csv("dados/exercicio7.csv")
dir.create('graphics/Exercicio7')

png(filename = "graphics/Exercicio7/exercicio7-barras.png", width = 480, height = 480)
barplot(adsData$Atendimento, names.arg = adsData$Ã.reas, xlab = "Área", ylab = "Atendimento", main = "Exercício 7", col = "red")
dev.off()
