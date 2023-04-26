library(ggplot2)
library(ggfortify)
set.seed(123)
data("iris")

data<-iris[,-5]

clust_model<-kmeans(data,centers = 3)
print(clust_model$centers)
print(autoplot(clust_model,data,frame=TRUE))