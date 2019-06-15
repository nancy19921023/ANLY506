#Mahattan Distance Calculation
dist(fm, method = "manhattan")

#euclidean Distance Calculation
dist(fm,method="euclidean")

#maximum Distance Calculation
dist(fm,method="maximum")

set.seed(3457)
dm <- as.matrix(df)[sample(1:8), ]
kmeanscal <- kmeans(dm, centers = 3)
names(kmeanscal)

par(mfrow = c(1, 2))
image(t(dm)[, nrow(dm):1], yaxt = "n", main = "Heat Map - Original Data")
image(t(dm)[, order(kmeanscal$cluster)], yaxt = "n", main = "Heat Map - Clustered Data")