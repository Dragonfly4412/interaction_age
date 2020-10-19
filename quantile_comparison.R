#animals as an example, similar for other groups.
animals=all[all$animal.==1,]

qcomhd(age.of.interaction ~ interaction.type, data = animals, q = 0.05)
qcomhd(age.of.interaction ~ interaction.type, data = animals, q = 0.95)

