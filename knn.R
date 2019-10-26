like<-read.csv("like.csv", header = T)
like2 <-read.csv("like.csv",stringsAsFactors = F)

colnames(like)<- c( "taik" ,"book" ,"travel", "school" ,"tall" ,"skin", "muslce" ,"label")

train_data<-like[,-8]
train_label<-like[,8]

test.data<-data.frame(talk=70, book=50,travel=30,school=70, tall=70, skin=40,muslce=50)

library(class)
result1<- knn(train_data, test.data, train_label, k=3 , prob=TRUE)
result1
