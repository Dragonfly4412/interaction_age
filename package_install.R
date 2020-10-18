install.packages(pkgs='WRS', repos='http://R-Forge.R-project.org')

install.packages('WRS2')
remove.packages('WRS2')

install.packages("remotes")
remotes::install_github("mkanai/WRShd")

library('WRS2')

interactions = data.frame(antagonisms=age$age[age$interaction.type=='antagonistic'], mutualisms=age$age[age$interaction.type=='mutualistic'])

set.seed(1)

qcomhd(age.of.interaction ~ interaction.type, data = all, q = 0.25)
qcomhd(age.of.interaction ~ interaction.type, data = all, q = 0.89)
