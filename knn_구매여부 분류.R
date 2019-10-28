library(class)

buy<-read.csv("buy.csv",fileEncoding = "euc-kr") 
buy$age <- scale(buy$나이)
buy$pay <- scale(buy$월수입)

train_data<-buy[,c(4,5)]
train_label<-buy[,3]

test_data <- data.frame(age=44, pay=400)

test_data$age <-(test_data$age-mean(buy$나이)/sd(buy$나이))
test_data$pay<-(test_data$pay-mean(buy$월수입)/sd(buy$월수입))

result<-knn(train_data, test_data,train_label,k=5,prob=TRUE)