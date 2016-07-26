# data input ####
source("scripts/input.R")

# tabelas de contingencia e fisher ####
addmargins(table(Tempo.Bloqueio, Grupo))
fisher.test(table(Tempo.Bloqueio, Grupo))
addmargins(table(Tempo.Cirurgia, Grupo))
fisher.test(table(Tempo.Cirurgia, Grupo))
addmargins(table(Bloqueio.Motor.Imediato, Grupo))
fisher.test(table(Bloqueio.Motor.Imediato, Grupo))
addmargins(table(Opioide.Imediato, Grupo))
fisher.test(table(Opioide.Imediato, Grupo))
addmargins(table(Bloqueio.Motor.Tardio, Grupo))
fisher.test(table(Bloqueio.Motor.Tardio, Grupo))
addmargins(table(Opioide.Tardio, Grupo))
fisher.test(table(Opioide.Tardio, Grupo))
table(Dor.Imediato3, Grupo)
fisher.test(table(Dor.Imediato3, Grupo))
table(Dor.Tardio3, Grupo)
fisher.test(table(Dor.Tardio3, Grupo))
table(Dor.Imediato2, Grupo)
fisher.test(table(Dor.Imediato2, Grupo))
table(Dor.Tardio2, Grupo)
fisher.test(table(Dor.Tardio2, Grupo))

table(Grupo, Dor.Imediato3, Tempo.Cirurgia)
table(Grupo, Dor.Tardio3, Tempo.Cirurgia)

addmargins(table(ASA, Grupo))
fisher.test(table(ASA, Grupo))

# cleanup ####
source("scripts/cleanup.R")
