# This is a more advanced example. In population and quantitative
# genetics, we are often interested in the relationships between
# genotypes and phenotypes. Here, we simulate some phenotypic data for
# n genotypes at L loci, in which the strength of the relationship
# between phenotype and genotype is controlled by sigma_e, the
# environmental variance.
set.seed(1)
n <- 40
L <- 100
sigma_e <- 6
maf <- 0.05 + 0.45 * runif(L)
genotypes <- (runif(n * L) < maf) +
             (runif(n * L) < maf)
genotypes <- matrix(genotypes, L, n)
b <- rbinom(n = L, size = 1, prob = 0.5)
sample_phenotype <- function (x, b, se) {
  genetics <- sum(x * b)
  environ <- rnorm(n = 1, sd = se)
  return(genetics + environ)
}
phenotypes <- apply(genotypes, 2, sample_phenotype, b = b, se = sigma_e)
genetic_values <- apply(genotypes, 2, function (x) sum(x * b))
plot(genetic_values, phenotypes, pch = 20, xlab = "genetic value",
     ylab = "phenotype")
