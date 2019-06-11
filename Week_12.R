#use Screeplot to visualize the relative importance of principal components
pca <- princomp(data)
screeplot(pca)

#extract the result from PCA
var <- get_pca_var(res.pca)

#variables
var$coord 
var$cos2  
var$contrib 

#plot PCA using ggbiplot
library(devtools)
install_github("vqv/ggbiplot")
library(ggbiplot)
ggbiplot(mtcars.pca)

#interpreting the results
mtcars.country = c(rep("Japan", 3), rep("US",4), rep("Europe", 7),rep("US",3), "Europe", rep("Japan", 3), rep("US",4), rep("Europe", 3), "US", rep("Europe", 3))
ggbiplot(mtcars.pca,ellipse=TRUE,  labels=rownames(mtcars), groups=mtcars.country)


#graphical parameters 
ggbiplot(mtcars.pca,ellipse=TRUE,circle=TRUE, labels=rownames(mtcars), groups=mtcars.country)

#remove the arrows
ggbiplot(mtcars.pca,ellipse=TRUE,obs.scale = 1, var.scale = 1,var.axes=FALSE,   labels=rownames(mtcars), groups=mtcars.country)

#customize 
ggbiplot(mtcars.pca,ellipse=TRUE,obs.scale = 1, var.scale = 1,  labels=rownames(mtcars), groups=mtcars.country) +
  scale_colour_manual(name="Origin", values= c("forest green", "red3", "dark blue"))+
  ggtitle("PCA of mtcars dataset")+
  theme_minimal()+
  theme(legend.position = "bottom")
