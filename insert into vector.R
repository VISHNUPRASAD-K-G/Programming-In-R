vect=c(24,56,57)
len<-length(vect)
for(i in (len+1):2){
  vect[i]=vect[i-1]
}
vect[2]=23
cat("Vector After Inserting Element At Position 2 Is: ",vect)