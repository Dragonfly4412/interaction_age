dat=read.csv('summary_ages_20200210.csv', header = T)

## all vs. all
age=dat
mean(age$age.of.interaction[age$interaction.type=='antagonistic'])
mean(age$age.of.interaction[age$interaction.type=='mutualistic'])

## animals
age=dat[dat$animal.==1,]
mean(age$age.of.interaction[age$interaction.type=='antagonistic'])
mean(age$age.of.interaction[age$interaction.type=='mutualistic'])

## insects
age=dat[dat$insect.==1,]
mean(age$age.of.interaction[age$interaction.type=='antagonistic'])
mean(age$age.of.interaction[age$interaction.type=='mutualistic'])

## insect-host
age=dat[dat$insect.host.==1,]
mean(age$age.of.interaction[age$interaction.type=='antagonistic'])
mean(age$age.of.interaction[age$interaction.type=='mutualistic'])

## insect-plant
age=dat[dat$insect.plant.==1,]
x=mean(age$age.of.interaction[age$interaction.type=='antagonistic'])
y=mean(age$age.of.interaction[age$interaction.type=='mutualistic'])
y-x

## insect-fungus
age=dat[dat$use_of.fungi_by_insects.==1,]
x=mean(age$age.of.interaction[age$interaction.type=='antagonistic'])
y=mean(age$age.of.interaction[age$interaction.type=='mutualistic'])
y-x

## plants
age=dat[dat$plants.==1,]
x=mean(age$age.of.interaction[age$interaction.type=='antagonistic'])
y=mean(age$age.of.interaction[age$interaction.type=='mutualistic'])
y-x

## fungi
age=dat[dat$fungi.==1,]
x=mean(age$age.of.interaction[age$interaction.type=='antagonistic'])
y=mean(age$age.of.interaction[age$interaction.type=='mutualistic'])
y-x

## fungus host
age=dat[dat$fungus.host.==1,]
x=mean(age$age.of.interaction[age$interaction.type=='antagonistic'])
y=mean(age$age.of.interaction[age$interaction.type=='mutualistic'])
y-x

## bacteria
age=dat[dat$bacteria.==1,]
x=mean(age$age.of.interaction[age$interaction.type=='antagonistic'])
y=mean(age$age.of.interaction[age$interaction.type=='mutualistic'])
y-x


## protists
age=dat[dat$protists.==1,]
x=mean(age$age.of.interaction[age$interaction.type=='antagonistic'])
y=mean(age$age.of.interaction[age$interaction.type=='mutualistic'])
y-x




