library(e1071)
set.seed(123)
library(caret)
data("iris")
train_index<-sample(1:nrow(iris),round(0.7*nrow(iris)))
train_data<-iris[train_index,]
test_data<-iris[-train_index,]
train_data[-5]<-scale(train_data[-5])
test_data[-5]<-scale(test_data[-5])

svm_model<-svm(Species~.,data=train_data,kernal="linear",cost=1)
svm_predict<-predict(svm_model,newdata=test_data[-5])
svm_tbl<-table(svm_predict,test_data$Species)
print(svm_tbl)
pred_acc<-sum(diag(svm_tbl))/sum(svm_tbl)
cat("Accuracy: ",round(pred_acc*100,2))