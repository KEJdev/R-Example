library(class) 

zoo<-read.csv("zoo.csv",stringsAsFactors=FALSE, header =F )
table(zoo[18])

normalize <- function(x){
    return((x-min(x))/(max(x)-min(x)))}

normalize(c(1,2,3,4,5))
normalize(c(10,20,30,40,50))

zoo2_n <- as.data.frame(lapply(zoo[,2:17], normalize))

zoo2_n_train <- zoo2_n[1:100, ]
zoo2_n_test <- zoo2_n[101,]

zoo2_train_label <- zoo[1:100,18]
zoo2_test_label <- zoo[101,18]

result <- knn(zoo2_n_train, zoo2_n_test, zoo2_train_label, k=1)








