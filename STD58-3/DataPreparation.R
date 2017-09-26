
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
#------------------------------------------------------------------------
#2)DATA PREPARATION
#แก้ไขปัญหาค่าว่างของข้อมูล missing values ด้วยการตัดเรคคอร์ดที่ว่างๆทิ้งไป

newdf = na.omit(df) #ตัด NA ออกไปทั้งหมด
sum(is.na(df)) 	  #นับจำนวน NA ทั้งหมดใน data set

sum(is.na(newdf)) 


plot3 <- qplot(newdf$age, xlab="Passenger Age (in years)")
plot4 <- qplot(newdf$pclass, xlab="Passenger Classes (by Fare)")
grid.arrange(plot3, plot4, ncol=2)

