v<-c(24,56,57)
cat("Orginal vECTOR: ",v,"\n")
len<-length(v)

for(i in (len+1):2){
  v[i]<-v[i-1]
}
v[2]<-23
cat("updated vector: ",v,"\n")