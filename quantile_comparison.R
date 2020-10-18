#animals
animals=all[all$animal.==1,]

qcomhd(age.of.interaction ~ interaction.type, data = animals, q = 0.25)
qcomhd(age.of.interaction ~ interaction.type, data = animals, q = 0.75)

