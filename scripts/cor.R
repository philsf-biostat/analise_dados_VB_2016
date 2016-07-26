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
t <- table(Grupo, Tempo.Bloqueio); barplot(t, beside = T, legend.text = rownames(t), main = "Tempo de Bloqueio x técnica anestésica", xlab = "Tempo de Bloqueio", ylab = "Frequencia")

par(mfrow = c(2,2))

t <- table(Grupo, Dor.Imediato); barplot(t, beside = T, legend.text = rownames(t), main = "Dor imediato x técnica anestésica", xlab = "Dor", ylab = "Frequencia")
t <- table(Grupo, Dor.Imediato2); barplot(t, beside = T, legend.text = rownames(t), main = "Dor imediato x técnica anestésica", xlab = "Dor", ylab = "Frequencia")
t <- table(Grupo, Dor.Tardio); barplot(t, beside = T, legend.text = rownames(t), main = "Dor tardio x técnica anestésica", xlab = "Dor", ylab = "Frequencia")
t <- table(Grupo, Dor.Tardio2); barplot(t, beside = T, legend.text = rownames(t), main = "Dor tardio x técnica anestésica", xlab = "Dor", ylab = "Frequencia")

png("figuras/boxplot-tempos_dor.png")
par(mfrow = c(2,2))
boxplot(Dor.Imediato ~ Tempo.Cirurgia, subset = Grupo == "A", xlab = "Tempo de cirurgia", ylab = "Dor imediato", main = "A")
boxplot(Dor.Imediato ~ Tempo.Bloqueio, subset = Grupo == "A", xlab = "Tempo de bloqueio", ylab = "Dor tardio", main = "A")
boxplot(Dor.Imediato ~ Tempo.Cirurgia, subset = Grupo == "B", xlab = "Tempo de cirurgia", ylab = "Dor imediato", main = "B")
boxplot(Dor.Imediato ~ Tempo.Bloqueio, subset = Grupo == "B", xlab = "Tempo de bloqueio", ylab = "Dor tardio", main = "B")
dev.off()

png("figuras/boxplot-tempos_dor.png")
par(mfrow = c(2,2))
boxplot(Dor.Imediato2 ~ Tempo.Cirurgia, subset = Grupo == "A", xlab = "Tempo de cirurgia", ylab = "Dor imediato", main = "A")
boxplot(Dor.Imediato2 ~ Tempo.Cirurgia, subset = Grupo == "B", xlab = "Tempo de cirurgia", ylab = "Dor imediato", main = "B")
boxplot(Dor.Tardio2 ~ Tempo.Cirurgia, subset = Grupo == "A", xlab = "Tempo de cirurgia", ylab = "Dor tardio", main = "A")
boxplot(Dor.Tardio2 ~ Tempo.Cirurgia, subset = Grupo == "B", xlab = "Tempo de cirurgia", ylab = "Dor tardio", main = "B")
dev.off()

## tempo x dor x grupo (26/4)
png("figuras/barplot-dor-tempo-tecnica2.png")
par(mfrow = c(2,2))
t <- table(A$Tempo.Cirurgia, A$Dor.Imediato2); barplot(t, beside = T, legend.text = rownames(t), main = "A", xlab = "Imediato")
t <- table(B$Tempo.Cirurgia, B$Dor.Imediato2); barplot(t, beside = T, legend.text = rownames(t), main = "B", xlab = "Imediato")
t <- table(A$Tempo.Cirurgia, A$Dor.Tardio2); barplot(t, beside = T, legend.text = rownames(t), main = "A", xlab = "Tardio")
t <- table(B$Tempo.Cirurgia, B$Dor.Tardio2); barplot(t, beside = T, legend.text = rownames(t), main = "B", xlab = "Tardio")
dev.off()

par(mfrow = c(2,1))
t <- table(Tempo.Cirurgia, Dor.Imediato); barplot(t, beside = T, legend.text = c("< 2h","> 2h"), main = "tempo de cirurgia", xlab = "Dor imediato", ylab = "Frequencia")
t <- table(Tempo.Cirurgia, Dor.Tardio); barplot(t, beside = T, legend.text = c("< 2h","> 2h"), main = "tempo de cirurgia", xlab = "Dor tardio", ylab = "Frequencia")

## Dor por técnica #### 26/04
png("figuras/barplot-dor-tecnica.png")
par(mfrow = c(2,2))
t <- table(A$Grupo, A$Dor.Imediato2); barplot(t, beside = T, legend.text = rownames(t), main = "Dor imediato x técnica anestésica", xlab = "Dor", ylab = "Frequencia")
t <- table(A$Grupo, A$Dor.Tardio2); barplot(t, beside = T, legend.text = rownames(t), main = "Dor tardio x técnica anestésica", xlab = "Dor", ylab = "Frequencia")
t <- table(B$Grupo, B$Dor.Imediato2); barplot(t, beside = T, legend.text = rownames(t), main = "Dor imediato x técnica anestésica", xlab = "Dor", ylab = "Frequencia")
t <- table(B$Grupo, B$Dor.Tardio2); barplot(t, beside = T, legend.text = rownames(t), main = "Dor tardio x técnica anestésica", xlab = "Dor", ylab = "Frequencia")
dev.off()
