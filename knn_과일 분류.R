library(class)

food <- data.frame(ingredient = c("apple", "bacon", "banana", "carrot",
                                  "celery", "cheese", "cucumber", "fish",
                                  "grape", "green bean", "lettuce",
                                  "nuts", "orange", "pear","shrimp"),
                   sweetness = c(10,1,10,7,3,1,2,3,8,3,1,3,7,10,2),
                   crunchiness = c(9,4,1,10,10,1,8,1,5,7,9,6,3,7,3),
                   class = c("Fruits","Proteins","Fruits","Vegetables",
                             "Vegetables","Proteins","Vegetables",
                             "Proteins","Fruits","Vegetables",
                             "Vegetables","Proteins","Fruits","Fruits","Proteins"))

tomato <- data.frame(sweetness = 6, crunchiness = 4)

train_data <- food[,c(2,3)]
train_label<-food[,4]

result1<-knn(train_data,tomato ,train_label, k=3, prob=TRUE)
result1
