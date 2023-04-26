a=c(10,5,4,9,208,44,700,455,1,110)
n<-as.integer(readline("Enter which Highest Element You want:"))
len=length(a)

for(i in 1:(len-1)){
  for(j in 1:(len-1)){
    if(a[j]>a[j+1]){
      temp=a[j]
      a[j]=a[j+1]
      a[j+1]=temp
    }
  }
}
cat("The Sorted Vector Is :",a)
cat("\nThe nth Higest Element Is",a[len-n+1])