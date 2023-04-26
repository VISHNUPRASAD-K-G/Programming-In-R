a=c(1:20)
n<-as.integer(readline("Enter The Position Of Element:"))
for(i in 1:length(a)){
  if(i %% n==0){
    print(a[i])
  }
}