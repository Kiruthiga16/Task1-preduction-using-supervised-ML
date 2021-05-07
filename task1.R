#The Spark Foundation
#Task1 preduction using supervised ML
#Date:4/5/2021
#Author:kiruthiga.M


#OBJECTIVE
#To Predict the score of the student by no.of scores they studied
#And to find the score if the student study for 9.25 hrs
#Load the dataset
cat("\f")
getwd()
setwd("c:/rpgm")
data=read.csv("c:/rpgm/task.csv")
data1=na.omit(data)
print(data1)


#checking the missing values 
print(is.na(data1))


#summaries the data 
summary(data1)

#Create relationship models
relation=lm(Scores~Hours,data)
print(relation)


#summary of the relationship
summary(relation)


#predict the data for given values
relation<-lm(Scores~Hours,data)
a=data.frame(Hours=9.25)
result=predict(relation,a)
print(result)


#visualising regression graphically
#plot the chart
plot(data,pch=20,col="navy",main="STUDENT_SCORES",cex=1,xlab="Hours in hrs/day",ylab="Scores")
abline(relation)

