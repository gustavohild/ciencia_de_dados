adsData <- read.csv("dados/exercicio5.csv")
dir.create('graphics/Exercicio5')

png(filename = "graphics/Exercicio5/exercicio5-barras.png", width = 480, height = 480)
barplot(adsData$NÂº.pessoas, names.arg = adsData$Marcas, xlab = "Marca", ylab = "Pessoas", main = "Exercício 5", col = "red")
dev.off()
