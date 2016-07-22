dados <- read.table("dataset/vb-dataset.dat")

dados$ASA <- ordered(dados$ASA)
dados$Dor.Imediato <- ordered(dados$Dor.Imediato)
dados$Dor.Imediato2 <- ordered(dados$Dor.Imediato2)
dados$Dor.Imediato3 <- ordered(dados$Dor.Imediato3)
dados$Dor.Tardio <- ordered(dados$Dor.Tardio)
dados$Dor.Tardio2 <- ordered(dados$Dor.Tardio2)
dados$Dor.Tardio3 <- ordered(dados$Dor.Tardio3)
dados$Tempo.Cirurgia <- ordered(dados$Tempo.Cirurgia)
dados$Tempo.Bloqueio <- ordered(dados$Tempo.Bloqueio)
#levels(dados$Dor.Imediato) <- 0:10
#levels(dados$Dor.Tardio) <- 0:10

attach(dados)

str(dados)
summary(dados)

detach(dados)
