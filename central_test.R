all=read.csv('summary_ages_20200113.csv', header = T)
all$age=log10(all$age)


head(all)

## subsetting for specific taxa
insect_f=all[all$focal.taxon =='insect', ]
insect_i=all[all$interactor..host.for.parasites. == 'insect', ]
fungus=all[all$focal.taxon =='fungus', ]


## subsetting insects for anta_sub and mutualist
taxon="insect"

list=rep(0,nrow(all))

for (i in 1:nrow(all)) {
  if(all$anta_sub[i]==taxon | (all$mutualist1[i]==taxon) | (all$mutualist2[i]==taxon))
    list[i]=1
}

sum(list[1:36])
sum(list[37:60])

## subsetting animals for anta_sub and mutualist
taxon="animal"

list=rep(0,nrow(all))

for (i in 1:nrow(all)) {
  if(all$anta_sub_b[i]==taxon | (all$mutualist1_b[i]==taxon) | (all$mutualist2_b[i]==taxon))
    list[i]=1
}

sum(list[1:36])
sum(list[37:60])



## subsetting plants for anta_sub and mutualist
taxon="plant"

list=rep(0,nrow(all))

for (i in 1:nrow(all)) {
  if(all$anta_sub_b[i]==taxon | (all$mutualist1_b[i]==taxon) | (all$mutualist2_b[i]==taxon))
    list[i]=1
}

sum(list[1:36])
sum(list[37:60])


## subsetting fungi for anta_sub and mutualist
taxon="fungus"

list=rep(0,nrow(all))

for (i in 1:nrow(all)) {
  if(all$anta_sub_b[i]==taxon | (all$mutualist1_b[i]==taxon) | (all$mutualist2_b[i]==taxon))
    list[i]=1
}

sum(list[1:36])
sum(list[37:60])



## subsetting bacteria for anta_sub and mutualist
taxon="bacteria"

list=rep(0,nrow(all))

for (i in 1:nrow(all)) {
  if(all$anta_sub_b[i]==taxon | (all$mutualist1_b[i]==taxon) | (all$mutualist2_b[i]==taxon))
    list[i]=1
}

sum(list[1:36])
sum(list[37:60])


## subsetting protists for anta_sub and mutualist
taxon="protist"

list=rep(0,nrow(all))

for (i in 1:nrow(all)) {
  if(all$anta_sub_b[i]==taxon | (all$mutualist1_b[i]==taxon) | (all$mutualist2_b[i]==taxon))
    list[i]=1
}

sum(list[1:36])
sum(list[37:60])




## Antagonistic vs. mutualistic fungus-host interactions
taxon="fungus"

list=rep(0,nrow(all))

for (i in 1:nrow(all)) {
  if(all$anta_sub_b[i]==taxon | all$mutualist1_b[i]==taxon)
    list[i]=1
}

sum(list[1:36])
sum(list[37:60])


## Antagonistic vs. mutualistic insect-plant interactions
taxon="insect"

list=rep(0,nrow(all))

for (i in 1:nrow(all)) {
  if((all$anta_sub[i]==taxon & all$anta_ob_b[i]=='plant') | (all$mutualist1[i]==taxon & all$mutualist2_b[i]=='plant'))
    list[i]=1
}

sum(list[1:36])
sum(list[37:60])



## Antagonistic vs. mutualistic utilization of fungi by insects
taxon="insect"

list=rep(0,nrow(all))

for (i in 1:nrow(all)) {
  if((all$anta_sub[i]==taxon & all$anta_ob_b[i]=='fungus') | (all$mutualist1[i]==taxon & all$mutualist2_b[i]=='fungus'))
    list[i]=1
}


## Antagonistic vs. mutualistic insect-host interactions
taxon="insect"

list=rep(0,nrow(all))

for (i in 1:nrow(all)) {
  if(all$anta_sub[i]==taxon | (all$mutualist1[i]==taxon & all$mutualist2_b[i]=='plant'))
    list[i]=1
}


##test for normality
age=all[list==1,]

qqnorm(age$age[age$interaction.type=='antagonistic'])
qqnorm(age$age[age$interaction.type=='mutualistic'])

par(mfrow=c(1,2))

hist(log(age$age[age$interaction.type=='antagonistic']), xlim= c(1,9), ylim=c(0,10), breaks=10, main = '', xlab = '', ylab = '')
title('Antagonistic interactions', family = 'sans')
title(ylab = 'Frequency', family = 'sans')
title(xlab = 'log(age)', family = 'sans')
lines(density(log(age$age[age$interaction.type=='antagonistic'])), col = 'orange')

hist(log(age$age[age$interaction.type=='mutualistic']), xlim=c(1,9),  ylim=c(0,10), breaks=10, main = '', xlab = '')
title('Mutualistic interactions', family = 'sans')
title(ylab = 'Frequency', family = 'sans')
title(xlab = 'log(age)', family = 'sans')
lines(density(log(age$age[age$interaction.type=='mutualistic'])),  col = 'orange')

shapiro.test(age$age[age$interaction.type=='antagonistic'])
shapiro.test(age$age[age$interaction.type=='mutualistic'])



## test

t.test(
        x = age$age[age$interaction.type=='antagonistic'],
       y = age$age[age$interaction.type=='mutualistic'],
       )


wilcox.test(
            x = age$age[age$interaction.type=='antagonistic'],
            y = age$age[age$interaction.type=='mutualistic'],
            correct = FALSE
            )

wilcox.test(
  x = age$age[age$interaction.type=='antagonistic'],
  y = age$age[age$interaction.type=='mutualistic'],
  correct = FALSE,
  alternative = 'less'
)


wilcox.test(
  x = age$age[age$interaction.type=='antagonistic'],
  y = age$age[age$interaction.type=='mutualistic'],
  correct = FALSE,
  alternative = 'greater'
)



## K-S tests
ks.test(  
          x = age$age[age$interaction.type=='antagonistic'],
          y = age$age[age$interaction.type=='mutualistic'],
          exact = T
          )


## equality of variance
var.test(  
  x = age$age[age$interaction.type=='antagonistic'],
  y = age$age[age$interaction.type=='mutualistic'],
)
