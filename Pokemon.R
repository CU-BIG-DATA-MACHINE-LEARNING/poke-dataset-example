install.packages(c("ggplot2","dplyr"))
library(ggplot2)
library(dplyr)
#C:\Users\terra\OneDrive\Documents\MachineLearning\pokedata
Pokemon <- read.csv('C:/Users/terra/OneDrive/Documents/MachineLearning/pokedata/Pokemon.csv')


# check rows and cols
nrow(Pokemon)
ncol(Pokemon)

#categorical columns
table(Pokemon$Legendary)
table(Pokemon$Type.1)
table(Pokemon$Generation)

#min and max values
min(Pokemon$HP)
max(Pokemon$HP)
max(Pokemon$Name)

#check data for missing values
sum(is.na(Pokemon$Type.2))


colnames(Pokemon)
colnames(Pokemon)[colnames(Pokemon)=="Type.1"]<- "PrimaryType"


#get all fire type pokemon
Pokemon %>% filter(Pokemon$PrimaryType == "Fire")-> FirePokemon

#average HP of fire type
mean(FirePokemon$HP)

#ggplot   [def of data plotting]  + [type of chart to plot]
ggplot(data=FirePokemon, aes(x=HP)) + geom_histogram(fill="red")

ggplot(data = FirePokemon, aes(x=Generation, fill=as.factor(Generation))) + geom_bar()

ggplot(data = Pokemon, aes(x=Speed, y=Defense))+ geom_point()

