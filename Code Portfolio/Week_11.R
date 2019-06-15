library(tidyverse)  
library(cluster)    
library(factoextra) 
library(dendextend) 

#use the data
df <- USArrests

#scale the data to avoid arbitrary variable unit
df <- scale(df)
head(df)

#try dissimilarity matrix
d <- dist(df, method = "euclidean")

#hierarchical clustering using complete linkage
hc1 <- hclust(d, method = "complete" )

#plot the obtained dendrogram
plot(hc1, cex = 0.6, hang = -1)

#agnes function  to compute 
hc2 <- agnes(df, method = "complete")

#calculate the agglomerative coefficient
hc2$ac
