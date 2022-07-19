# Perform principal components analysis (PCA), calculate the
# proportion of variance in the data explained by each PC, and create
# a data frame to visualize the PCs.
data(iris)
annotation <- iris$Species
iris <- iris[-5]
iris_pca <- prcomp(iris, center = TRUE, scale. = TRUE)
variances <- iris_pca$sdev^2
explained <- variances / sum(variances)
iris_pcs <- cbind(as.data.frame(iris_pca$x), annotation)
plot(iris_pcs$PC1, iris_pcs$PC2, pch = 20, col = annotation,
     xlab = sprintf("PC1 (%0.1f%%)", 100*explained[1]),
     ylab = sprintf("PC2 (%0.1f%%)", 100*explained[2]))
