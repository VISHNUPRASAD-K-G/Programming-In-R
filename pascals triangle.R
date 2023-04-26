n=as.integer(readline("Enter The No Of Levels: "))

for (i in 1:n){
  for(j in 1:(n-i+1)){
    cat(" ")
  }
  no<-1
  for(j in 1:i){
    if(no!=0){
    cat(no," ")}
  no=no*(i-j)/j
}
  cat("\n")
}
