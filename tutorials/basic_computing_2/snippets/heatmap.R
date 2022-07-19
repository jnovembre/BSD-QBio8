# Create heat map for an n x n correlation matrix, where n is the
# number of columns of the matrix or data frame.
library(gplots)
data(iris)
iris <- iris[-5]
iris <- as.matrix(iris)
iris_cor <- cor(iris, use = "pairwise.complete.obs")
heatmap.2(iris_cor, trace = "none", cexRow = 0.75, cexCol = 0.75,
          key = FALSE, margins = c(6, 6))
