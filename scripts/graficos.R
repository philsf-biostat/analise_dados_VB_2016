par(mfrow = c(1,1))
t <- table(Técnica, Dor.Imediato3, Tempo.Cirurgia)[,,1]; barplot(t, beside = T, legend.text = rownames(t), main = paste("p-valor:",round(fisher.test(t)$p.value, 4)))
dev.copy(png, "tempo-curto-dor-imediato.png"); dev.off()
t <- table(Técnica, Dor.Tardio3, Tempo.Cirurgia)[,,1]; barplot(t, beside = T, legend.text = rownames(t), main = paste("p-valor:",round(fisher.test(t)$p.value, 4)))
dev.copy(png, "tempo-curto-dor-tardio.png"); dev.off()

t <- table(Técnica, Dor.Imediato3, Tempo.Cirurgia)[,,2]; barplot(t, beside = T, legend.text = rownames(t), main = paste("p-valor:",round(fisher.test(t)$p.value, 4)))
dev.copy(png, "tempo-longo-dor-imediato.png"); dev.off()
t <- table(Técnica, Dor.Tardio3, Tempo.Cirurgia)[,,2]; barplot(t, beside = T, legend.text = rownames(t), main = paste("p-valor:",round(fisher.test(t)$p.value, 4)))
dev.copy(png, "tempo-longo-dor-tardio.png"); dev.off()

par(mfrow = c(2,2))
dev.copy(png, "tempo-dor-2x2.png"); dev.off()

rm(t)
