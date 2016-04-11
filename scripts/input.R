dados <- read.table("dataset/vb-dataset.dat")

dados$ASA <- ordered(dados$ASA)
dados$Dor.Imediato <- ordered(dados$Dor.Imediato)
dados$Dor.Tardio <- ordered(dados$Dor.Tardio)
dados$Tempo.Cirurgia <- ordered(dados$Tempo.Cirurgia)
dados$Tempo.Bloqueio <- ordered(dados$Tempo.Bloqueio)

str(dados)
summary(dados)
