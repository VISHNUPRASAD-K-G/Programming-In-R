data(mtcars)
set.seed(41)
split<-sample(nrow(mtcars),size=.7*nrow(mtcars))
trainData=mtcars[split,]
model<-glm(am~mpg+disp+hp,data=trainData,family=binomial())
mpg<-as.numeric(readline("Enter the mpg of vechicle: "))
disp<-as.numeric(readline("Enter the disp of vechicle: "))
hp<-as.numeric(readline("Enter the horse_power of vechicle: "))
name<-readline("Enter The Car Name ")
input_data<-data.frame(mpg,disp,hp,row.names = name)
predictions<-predict(model,newdata = input_data,type="response")

binary_preds<-ifelse(predictions>0.5,1,0)
print(binary_preds)

if(binary_preds==0){
  print(paste("The Transmission Type of ",name," Is AUTOMATIC"))
}else{print(paste("The Transmission Type of ",name," Is MANUAL"))}
