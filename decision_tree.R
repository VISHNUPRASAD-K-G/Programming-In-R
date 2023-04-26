library(rpart)
library(rpart.plot)
library(caret)
data(iris)
set.seed(123)

trainIndex<-sample(1:nrow(iris),round(nrow(iris)*.7),replace=FALSE)
trainData<-iris[trainIndex,]
test_data<-iris[-trainIndex,]

tree_model<-rpart(Species~.,data=trainData,method="class")
rpart.plot(tree_model)
predictions<-predict(tree_model,test_data,type="class")

cm<-(confusionMatrix(predictions,test_data$Species))$table

acc=((cm[1]+cm[5]+cm[9])/nrow(test_data))*100
cat("\nAccuracy IS : ",acc,"%")
