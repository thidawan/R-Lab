
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
summary(DF$survived) 

#เลือกทำงานกับบางfields
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

