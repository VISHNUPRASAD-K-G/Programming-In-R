print("apply : \n")
df<-data.frame(x=1:4,y=5:8,z=10:13)
df
app_fn=apply(X=df, MARGIN = 1,FUN = sum)
print(app_fn)

print("lapply: \n")
x<-as.list(1:4)
print(lapply(x, function(x)2^x))