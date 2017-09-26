
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
library("dplyr", lib.loc="~/R/win-library/3.1")
install.packages("mice")
library("mice", lib.loc="~/R/win-library/3.1")
install.packages("Hmisc")
library("Hmisc", lib.loc="~/R/win-library/3.4")
library("psych", lib.loc="~/R/win-library/3.1")


#------------------------------------------------------------------------
#3)Planing models

#เลือกทำงานกับบางfiledsและกำหนดตัวแปรข้อมูล
class = newdf[,c(1)] #เลือกcolumn pclass
alive = newdf[,c(2)] #เลือกcolumn survived
sex_ = newdf[,c(3)]#เลือกcolumn sex
newSex = sex_

for(i in sex_)
{  
  if(sex_[,c(i)]=="female")
    print(sex_[,c(i)])
    #newSex[,c(i)] == 1
}  
  
age_ = newdf[,c(4)]#เลือกcolumn age
sibling = newdf[,c(5)]#เลือกcolumn sibsp
parch_ = newdf[,c(6)]#เลือกcolumn parch

#ทำการหาความสัมพันธ์ระหว่าง2ตัวแปร
cor(alive,class)
cor(alive,as.factor(sex_))
cor(alive,age_)
cor(alive,sibling)
cor(alive,parch_)








