install.packages("rpart")
install.packages("rattle")
install.packages("FSelector")

library(rattle)
library(rpart.plot)
library(FSelector)

hr<-read.csv("Heart.csv", header = T)
head(hr)

a<-information.gain(AHD~., hr[,-1])

tree <- rpart(AHD~.,data=hr[,-1], control=rpart.control(minsplit=2))
fancyRpartPlot(tree)
