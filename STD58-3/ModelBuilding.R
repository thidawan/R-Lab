
#เรียกPackages/libaries ที่จะใช้
library(readr)
titanic <- read_csv("~/R/STD58-3/Titanic/titanic.csv")
View(titanic)
install.packages("ggplot2")
library("ggplot2", lib.loc="~/R/win-library/3.4")
install.packages("ggthemes")
library("ggthemes", lib.loc="~/R/win-library/3.4")
library("scales", lib.loc="~/R/win-library/3.4")
install.packages("gridExtra")
library("gridExtra", lib.loc="~/R/win-library/3.4")
install.packages("dplyr")
library("dplyr", lib.loc="~/R/win-library/3.4")
install.packages("mice")
library("mice", lib.loc="~/R/win-library/3.4")
install.packages("Hmisc")
library("Hmisc", lib.loc="~/R/win-library/3.4")
library("psych", lib.loc="~/R/win-library/3.1")
#--------------------------------------------------------------
#4)Building models
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




