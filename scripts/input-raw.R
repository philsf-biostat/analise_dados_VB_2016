library(xlsx)
## Leitura da planilha
dados.raw <- read.xlsx("../Planilha para Estatistica VIRNA.xlsx","Normalizada")

## Anomimizando ####
# Coluna 1 é Paciente (nome)
dados.raw <- dados.raw[-c(1)]

## Tabela simples
write.table(dados.raw, "dataset/vb-dataset.dat")
rm(dados.raw)
