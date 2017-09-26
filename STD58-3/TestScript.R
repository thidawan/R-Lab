
#เรียกPackages/libaries ที่จะใช้
library(readr)
dataset <- read_csv(NULL)
View(dataset)
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
install.packages("Hmisc")
library("Hmisc", lib.loc="~/R/win-library/3.4")

#-----------------------------------------------------
#1)DATA DISCOVERY

#ทำความเข้าใจข้อมูลสรุปข้อมูล
DF <- titanic
print(DF)
names(DF) #ขอดูชื่อ Fields
head(DF, 5) #ขอดูข้อมูลจำนวน 5 records แรก
tail(DF, 5) #ขอดูข้อมมูลจำนวน 5 records สุดท้าย
summary(DF$pclass) #ขอดูสรุปเฉพาะข้อมูล  passengers class
summary(DF$age) #ขอดูสข้อมูลแายุ
describe(DF) #ทำการสรุป เป็นราย field ได้แก่ ความถี่ของแต่ละค่าข้อมูล
summary(DF) #ทำการสรุปข้อมูลโดยรวม เน้น ค่าศูนย์กลาง
summary(as.factor(DF$survived)) #ทำการสรุปว่าผู้รอดชีวิต/ตายมีกี่คน
summary(DF$survived) #dddddddddd

#เลือกทำงานกับบางfiledsที่เราสนใจ เลือก
df = DF[,c(1,2,4:7)] #เลือกข้อมูลมาเฉพาะบางคอลัมภ์
sum(is.na(df$pclass)) #นับจำนวนNA ในคอลัมภ์ passenger class
sum(is.na(df$survived))
sum(is.na(df))

#ดูค่าแจกแจงความถี่ข้อมูลคอลัมภ์ต่างๆ
barplot(table(df$pclass), xlab="Class", ylab="Frequency", main="Histogram of Passenger Class") 
summary(as.factor(df$pclass))

barplot(table(df$survived), xlab="Class", ylab="Frequency", main="Histogram of number of survival passengers") 
summary(as.factor(DF$survived))

barplot(table(df$age), xlab="Class", ylab="Frequency", main="Histogram of number of Age") 
summary(as.factor(DF$age))

barplot(table(df$sex), xlab="Class", ylab="Frequency", main="Histogram of number of Gender") 
summary(as.factor(DF$sex))

barplot(table(df$sibsp), xlab="Class", ylab="Frequency", main="Histogram of number of passengers siblings") 
summary(as.factor(DF$sibsp))



g <- ggplot(df, aes(pclass)) 
g + geom_bar()



plot1 <- qplot(df$age, xlab="Passenger Age (in years)")
plot2 <- qplot(df$pclass, xlab="Passenger Classes (by Fare)")
grid.arrange(plot1, plot2, ncol=2)


#------------------------------------------------------------------------
#2)DATA PREPARATION
#แก้ไขปัญหาค่าว่างของข้อมูล missing values ด้วยการตัดเรคคอร์ดที่ว่างๆทิ้งไป

newdf = na.omit(df) #ตัด NA ออกไปทั้งหมด
sum(is.na(df)) 	  #นับจำนวน NA ทั้งหมดใน data set

sum(is.na(newdf)) 


plot3 <- qplot(newdf$age, xlab="Passenger Age (in years)")
plot4 <- qplot(newdf$pclass, xlab="Passenger Classes (by Fare)")
grid.arrange(plot3, plot4, ncol=2)

#plot(newdf$survived,newdf$age)


#------------------------------------------------------------------------
#3)Planing models




#------------------------------------------------------------------------
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




