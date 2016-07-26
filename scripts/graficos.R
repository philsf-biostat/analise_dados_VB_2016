# data input ####
source("scripts/input.R")

# barplots ####

par(mfrow = c(1,1))
t <- table(Grupo, Dor.Imediato3, Tempo.Cirurgia)[,,1]; barplot(t, beside = T, legend.text = rownames(t), main = paste("p-valor:",round(fisher.test(t)$p.value, 4)))
dev.copy(png, "figuras/tempo-curto-dor-imediato.png"); dev.off()
t <- table(Grupo, Dor.Tardio3, Tempo.Cirurgia)[,,1]; barplot(t, beside = T, legend.text = rownames(t), main = paste("p-valor:",round(fisher.test(t)$p.value, 4)))
dev.copy(png, "figuras/tempo-curto-dor-tardio.png"); dev.off()

t <- table(Grupo, Dor.Imediato3, Tempo.Cirurgia)[,,2]; barplot(t, beside = T, legend.text = rownames(t), main = paste("p-valor:",round(fisher.test(t)$p.value, 4)))
dev.copy(png, "figuras/tempo-longo-dor-imediato.png"); dev.off()
t <- table(Grupo, Dor.Tardio3, Tempo.Cirurgia)[,,2]; barplot(t, beside = T, legend.text = rownames(t), main = paste("p-valor:",round(fisher.test(t)$p.value, 4)))
dev.copy(png, "figuras/tempo-longo-dor-tardio.png"); dev.off()

rm(t)

# cleanup ####
source("scripts/cleanup.R")

# obsolete ####
# par(mfrow = c(2,2))
# dev.copy(png, "figuras/tempo-dor-2x2.png"); dev.off()
