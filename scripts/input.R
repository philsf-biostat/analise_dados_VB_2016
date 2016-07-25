## data input ####
dados <- read.table("dataset/vb-dataset.dat")

dados$ASA <- ordered(dados$ASA, levels = c("I", "II", "III"))
dados$Dor.Imediato <- ordered(dados$Dor.Imediato, levels = 0:10)
dados$Dor.Imediato2 <- ordered(dados$Dor.Imediato2, levels = c("Ausente", "Leve", "Moderada", "Intensa"))
dados$Dor.Imediato3 <- factor(dados$Dor.Imediato3)
dados$Dor.Tardio <- ordered(dados$Dor.Tardio, levels = 0:10)
dados$Dor.Tardio2 <- ordered(dados$Dor.Tardio2, levels = c("Ausente", "Leve", "Moderada", "Intensa"))
dados$Dor.Tardio3 <- factor(dados$Dor.Tardio3)
dados$Tempo.Cirurgia <- ordered(dados$Tempo.Cirurgia, levels = c("Curto", "Longo"))
dados$Tempo.Bloqueio <- ordered(dados$Tempo.Bloqueio, levels = c("Curto", "Médio", "Longo"))

str(dados)
summary(dados)

attach(dados)
