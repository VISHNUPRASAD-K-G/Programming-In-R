x <- c(141, 134, 178, 156, 108, 116, 119, 143, 162, 130)  
y <- c(62, 85, 56, 21, 47, 17, 76, 92, 62, 58)
model=lm(y~x)
h=as.numeric(readline("Enter The Height To Predict Weight: "))
new_height=data.frame(x=h)
new_weight=predict(model,new_height)
print(paste("The Predicted Weight For The Height ",h,"is",new_weight))
plot(x,y,col="Blue",main = "Linear Regression",
     abline(model),cex=1.3,pch=16,xlab = "Weight In Kg",ylab = "Height In cm")

