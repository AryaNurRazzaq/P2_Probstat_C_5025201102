#1a
Responden = c(1,2,3,4,5,6,7,8,9)
x = c(78,75,67,77,70,72,78,74,77)
y = c(100,95,70,90,90,90,89,90,100)

Data = data.frame(Responden,x,y)

print(Data)

deviasi = sd(x-y)

deviasi

#1b
t.test(x,y,alternative = "greater",var.equal = FALSE)

#1c

#2
install.packages("BSDA")
library(BSDA)

#2a
#setuju

#2b
tsum.test(mean.x = 23500, sd(3900), n.x = 100)



#3
install.packages("mosaic")
library(mosaic)

#3b
tsum.test(mean.x = 3.64, s.x = 1.67, n.x = 19, mean.y = 2.79 , s.y = 1.32, n.y = 27, alternative = "greater", var.equal = TRUE)
#3c
plotDist(dist='t', df=2, col="red")

#3c
qchisq(p = 0.05, df = 2, lower.tail=FALSE)

#3d
qchisq(p = 0.05, df = 2, lower.tail = FALSE)

#4a


#5
install.packages("multcompView")
install.packages("ggplot2")
install.packages("readr")
install.packages("dplyr")
library(readr)
library(ggplot2)
library(multcompView)
library(dplyr)

#5a
Data_no5 = read.csv('https://drive.google.com/u/0/uc?id=1aLUOdw_LVJq6VQrQEkuQhZ8FW43FemTJ&export=download')
head(Data_no5)

str(Data_no5)

qplot(x = Temp, y = Light, geom = "point", data = GTL) + facet_grid(.~Glass, labeller = label_both)

#5b
Data_no5$Glass = as.factor(Data_no5$Glass)
Data_no5$Temp_Factor = as.factor(Data_no5$Temp)
str(Data_no5)

anova <- aov(Light ~ Glass*Temp_Factor, data = Data_no5)
summary(anova)

#5c
Summary = group_by(GTL, Glass, Temp) %>%
summarise(mean=mean(Light), sd=sd(Light)) %>%
arrange(desc(mean))
print(Summary)

#5d
Tukey <- TukeyHSD(anova)
print(Tukey) 

#5e
Tukey.cld <- multcompLetters4(anova, Tukey)
print(Tukey.cld)

cld = as.data.frame.list(Tukey.cld$`Glass:Temp_Factor`)
Summary$Tukey = cld$Letters
print(Summary)
