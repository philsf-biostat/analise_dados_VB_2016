library(polycor)
## polychor() ## ordinal - ordinal
polychor(Sexo, Dor.Imediato)

polychor(Sexo, ASA)

## Tempo bloqueio/cirurgia x dor imediato
polychor(Tempo.Bloqueio, Dor.Imediato)
polychor(Tempo.Cirurgia, Dor.Imediato)

## 
par(mfrow = c(2,2))
t <- table(Tempo.Cirurgia, Dor.Imediato); barplot(t, beside = T, legend.text = rownames(t), main = "tempo de cirurgia", xlab = "Dor imediato", ylab = "Frequencia")
t <- table(Tempo.Bloqueio, Dor.Imediato); barplot(t, beside = T, legend.text = rownames(t), main = "tempo de bloqueio", xlab = "Dor imediato", ylab = "Frequencia")
t <- table(Tempo.Cirurgia, Dor.Tardio); barplot(t, beside = T, legend.text = rownames(t), main = "tempo de cirurgia", xlab = "Dor tardio", ylab = "Frequencia")
t <- table(Tempo.Bloqueio, Dor.Tardio); barplot(t, beside = T, legend.text = rownames(t), main = "tempo de bloqueio", xlab = "Dor tardio", ylab = "Frequencia")

png("figuras/barplot-tempos_dor_tecnica.png")
par(mfrow = c(2,2))
t <- table(Tempo.Cirurgia, Dor.Imediato); barplot(t, beside = T, legend.text = c("< 2h","> 2h"), main = "tempo de cirurgia", xlab = "Dor imediato", ylab = "Frequencia")
t <- table(Tempo.Bloqueio, Dor.Imediato); barplot(t, beside = T, legend.text = c("< 5min","5 a 10 min","> 10 min"), main = "tempo de bloqueio", xlab = "Dor imediato", ylab = "Frequencia")
t <- table(Tempo.Cirurgia, Dor.Tardio); barplot(t, beside = T, legend.text = c("< 2h","> 2h"), main = "tempo de cirurgia", xlab = "Dor tardio", ylab = "Frequencia")
t <- table(Tempo.Bloqueio, Dor.Tardio); barplot(t, beside = T, legend.text = c("< 5min","5 a 10 min","> 10 min"), main = "tempo de bloqueio", xlab = "Dor tardio", ylab = "Frequencia")
dev.off()

par(mfrow = c(1,1))
t <- table(Técnica, Tempo.Bloqueio); barplot(t, beside = T, legend.text = rownames(t), main = "Tempo de Bloqueio x técnica anestésica", xlab = "Tempo de Bloqueio", ylab = "Frequencia")

par(mfrow = c(1,2))

t <- table(Técnica, Dor.Imediato); barplot(t, beside = T, legend.text = rownames(t), main = "Dor imediato x técnica anestésica", xlab = "Dor", ylab = "Frequencia")
t <- table(Técnica, Dor.Imediato2); barplot(t, beside = T, legend.text = rownames(t), main = "Dor imediato x técnica anestésica", xlab = "Dor", ylab = "Frequencia")
t <- table(Técnica, Dor.Tardio); barplot(t, beside = T, legend.text = rownames(t), main = "Dor tardio x técnica anestésica", xlab = "Dor", ylab = "Frequencia")
t <- table(Técnica, Dor.Tardio2); barplot(t, beside = T, legend.text = rownames(t), main = "Dor tardio x técnica anestésica", xlab = "Dor", ylab = "Frequencia")


# t <- table(Dor.Tardio, Dor.Imediato); barplot(t, beside = T, legend.text = rownames(t), main = "Dor imediato x tempo de bloqueio")

A <- dados[Técnica == "A",]
B <- dados[Técnica == "B",]

png("figuras/boxplot-tempos_dor.png")
par(mfrow = c(2,2))
boxplot(Dor.Imediato ~ Tempo.Cirurgia, data = A, xlab = "Tempo de cirurgia", ylab = "Dor imediato", main = "A")
boxplot(Dor.Imediato ~ Tempo.Bloqueio, data = A, xlab = "Tempo de bloqueio", ylab = "Dor tardio", main = "A")
boxplot(Dor.Imediato ~ Tempo.Cirurgia, data = B, xlab = "Tempo de cirurgia", ylab = "Dor imediato", main = "B")
boxplot(Dor.Imediato ~ Tempo.Bloqueio, data = B, xlab = "Tempo de bloqueio", ylab = "Dor tardio", main = "B")
dev.off()

par(mfrow = c(1,1))

par(mfrow = c(2,2))
t <- table(Tempo.Cirurgia, Dor.Imediato); barplot(t, beside = T, legend.text = c("< 2h","> 2h"), main = "tempo de cirurgia", xlab = "Dor imediato", ylab = "Frequencia")
t <- table(Tempo.Cirurgia, Dor.Tardio); barplot(t, beside = T, legend.text = c("< 2h","> 2h"), main = "tempo de cirurgia", xlab = "Dor tardio", ylab = "Frequencia")


## teste com variável ordinal ####
# variável assume valores 1, 2 e 3, com labels descritivos
tempo <- c(rep(1,19),rep(2,25), rep(3,6))
tempo <- ordered(tempo, labels = c("Curto", "Medio", "Longo"))