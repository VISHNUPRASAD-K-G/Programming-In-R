x=matrix(c(8:51),ncol=4,byrow=T)

h_cluster=hclust(dist(x))

plot(h_cluster)