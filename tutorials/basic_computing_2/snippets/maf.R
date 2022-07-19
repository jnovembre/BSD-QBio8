# Estimate the minor allele frequency (MAF) given a vector of
# genotypes encoded as allele counts, allowing for missing
# genotypes (NAs).
set.seed(1)
n <- 100
maf_true <- 0.3
genotypes <- (runif(n) < maf_true) + (runif(n) < maf_true)
genotypes[runif(n) < 0.05] <- NA
af <- mean(genotypes, na.rm = TRUE)/2
maf <- min(af, 1 - af)
