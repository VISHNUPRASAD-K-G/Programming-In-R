data("mtcars")

data1<-mtcars$mpg
data2<-mtcars$wt

covariance<-round(cov(data1,data2),3)
variance<-round(var(data1),3)
correl<-round(cor(data1,data2),3)

cat("Covariance: ",covariance,"\nVariance: ",
    variance,"\nCorrelation: ",correl)