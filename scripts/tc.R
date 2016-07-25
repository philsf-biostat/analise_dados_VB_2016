# data input ####
source("scripts/input.R")

# tabelas de contingencia e fisher ####
addmargins(table(Tempo.Bloqueio, Técnica))
fisher.test(table(Tempo.Bloqueio, Técnica))
addmargins(table(Tempo.Cirurgia, Técnica))
fisher.test(table(Tempo.Cirurgia, Técnica))
addmargins(table(Bloqueio.Motor.Imediato, Técnica))
fisher.test(table(Bloqueio.Motor.Imediato, Técnica))
addmargins(table(Opioide.Imediato, Técnica))
fisher.test(table(Opioide.Imediato, Técnica))
addmargins(table(Bloqueio.Motor.Tardio, Técnica))
fisher.test(table(Bloqueio.Motor.Tardio, Técnica))
addmargins(table(Opioide.Tardio, Técnica))
fisher.test(table(Opioide.Tardio, Técnica))
table(Dor.Imediato3, Técnica)
fisher.test(table(Dor.Imediato2, Técnica))
table(Dor.Tardio3, Técnica)
fisher.test(table(Dor.Tardio2, Técnica))
table(Dor.Imediato2, Técnica)
fisher.test(table(Dor.Imediato2, Técnica))
table(Dor.Tardio2, Técnica)
fisher.test(table(Dor.Tardio2, Técnica))

table(Técnica, Dor.Imediato3, Tempo.Cirurgia)
table(Técnica, Dor.Tardio3, Tempo.Cirurgia)

addmargins(table(ASA, Técnica))
fisher.test(table(ASA, Técnica))

# cleanup ####
source("scripts/cleanup.R")
