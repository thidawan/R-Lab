library(readr)
titanic <- read_csv("~/R/Titanic/titanic.csv")
View(titanic)
plot(titanic)
summary(titanic)


install.packages("dplyr")
library("dplyr", lib.loc="~/R/win-library/3.4")
library("ggplot2", lib.loc="~/R/win-library/3.4")
install.packages("ggthemes")
library("ggthemes", lib.loc="~/R/win-library/3.4")
library("scales", lib.loc="~/R/win-library/3.4")
install.packages("mice")
View(titanic)
library(readr)
titanic <- read_csv("~/R/Titanic/titanic.csv")
library(readr)
titanic <- read_csv("~/R/Titanic/titanic.csv",stringsAsFactors = F)
View(titanic)
str(Titanic)
library(readr)

ls()
names(titanic)
str(titanic)
head(titanic,5)
tail(titanic,5)

library("mice", lib.loc="~/R/win-library/3.4")
install.packages("Hmisc")
library("Hmisc", lib.loc="~/R/win-library/3.4")

label(titanic$survived)
label(titanic$name)
describe(titanic)
summary(titanic)
pclass<-data.frame(titanic[,1])
View(pclass)
titanic[1:5,]
rm(pclass)
df <-titanic
summary(df$o=pclass)
summary(df$pclass)
summary(as.factor(df$Survived))
df$Survived = as.factor(df$Survived)
summary(df$Survived)
summary(as.factor(df$survived))
describe(df)
rm(df)
DF <- titanic
df <-DF[,c(1,2,4:7)]
View(df)
View(df)
sum(is.na(df$pclass))
sum(is.na(df))
barplot(table(df$Pclass), xlab="Class", ylab="Frequency", main="Histogram of Passenger Class")
barplot(table(df$pclass), xlab="Class", ylab="Frequency", main="Histogram of Passenger Class")
geom_bar(table(df$pclass), xlab="Class", ylab="Frequency", main="Histogram of Passenger Class")
geom_bar(table(df$pclass))
g <- ggplot(df, aes(pclass))
g + geom_bar()
barplot(table(df$pclass), xlab="Class", ylab="Frequency", main="Histogram of Passenger Class")
g + geom_bar()
g <- ggplot(df, aes(pclass))
g + geom_bar(aes(fill = drv))
g + geom_bar(aes(fill = df$pclass))
g + geom_bar()
ggplot(df, aes(df$survived, df$pclass)) +
geom_col()
ggplot(df, aes(df$pclass,df$survived)) +
geom_col()
ggplot(df, aes(df$survived, df$pclass)) +
geom_col()
g + geom_bar()
barplot(table(df$pclass), xlab="Class", ylab="Frequency", main="Histogram of Passenger Class")
newdf = na.omit(df)
View(newdf)
sum(is.na(df))
sum(is.na(newdf))
install.packages("gridExtra")
library("gridExtra", lib.loc="~/R/win-library/3.4")
plot1 <- qplot(newdf$age, xlab="Passenger Age (in years)")
library("ggplot2", lib.loc="~/R/win-library/3.4")
library("ggthemes", lib.loc="~/R/win-library/3.4")
plot1 <- qplot(newdf$age, xlab="Passenger Age (in years)")
plot2 <- qplot(titanic$pclass, xlab="Passenger Classes (by Fare)"
grid.arrange(plot1, plot2, ncol=2)
plot2 <- qplot(titanic$pclass, xlab="Passenger Classes (by Fare)")
grid.arrange(plot1, plot2, ncol=2)

#building model-randomForest for classification and regression

library(readr)
train <- read_csv("~/R/Titanic/train.csv")
install.packages("knitr")
install.packages("caret")
install.packages("party")
install.packages("randomForest")
library("knitr", lib.loc="~/R/win-library/3.4")
library("caret", lib.loc="~/R/win-library/3.4")
library("party", lib.loc="~/R/win-library/3.4")
library("randomForest", lib.loc="~/R/win-library/3.4")

View(train)
train$Survived <- factor(train$Survived, levels=c(0,1), labels=c('DIED', 'SURVIVED'))
predictor <- factor(Survived)~Age+Sex+Pclass
set.seed(1234)
train_idx <- createDataPartition(train$Survived, p=0.75, list=F, times=1)
model_dat <- train[train_idx,]
val_dat <- train[-train_idx,]
par(mfrow=c(1,1))

simple_survival_ct<- ctree(predictor, data=model_dat)

#------------------------

for (year in c(2010,2011,2012,2013,2014,2015)){
  print(paste("The year is", year))
}

for (j in 1:5)
{
  print(j^2)
}
