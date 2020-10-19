dat=read.csv('Table_S4.csv')

dat=dat[dat$diet.shift.=="N",]

dat_a=dat[dat$interaction.type=="antagonistic",]
dat_m=dat[dat$interaction.type=="mutualistic",]


hist(dat_a$age.of.interaction, breaks=5)

kruskal.test(age.of.interaction ~ interaction.type, data = dat)
