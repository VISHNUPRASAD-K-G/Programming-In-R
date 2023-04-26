library(dbscan)
x <- matrix(c(1, 2, 1, 4, 2, 3, 8, 7, 8, 9, 7, 8), ncol = 2, byrow = TRUE)
db_r <- dbscan(x, eps = 3, minPts = 2)
print(db_r)