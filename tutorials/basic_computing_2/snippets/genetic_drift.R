# Simulate allele frequencies under a "null model" of genetic drift
# (to be compared against, say, a model with natural selection). In
# this simulation, the starting allele frequencies are drawn from the
# Beta distribution, and allele frequencies change over time by adding
# a small normally-distributed random variable. Alleles that have
# fixed in the population are then removed from the simulation.
set.seed(4)
L <- 100
allele_freq_start <- rbeta(L, shape1 = 1, shape2 = 3)
allele_freq <- allele_freq_start +
  rnorm(n = L, sd = sqrt((allele_freq_start) * (1 - allele_freq_start) * 0.01))
i <- which(allele_freq > 0 & allele_freq < 1)
allele_freq <- allele_freq[i]
plot(allele_freq_start[i], allele_freq, pch = 20,
     xlab = "starting frequency", ylab = "evolved frequency")
abline(a = 0, b = 1, col = "magenta", lty = "dotted")
