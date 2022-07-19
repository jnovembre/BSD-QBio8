# Transform numeric data (x) to the standard normal distribution via
# "quantile normalization". It randomly assigns rank to ties.
set.seed(1)
x <- rpois(n = 100, lambda = 8)
y <- rank(x, ties.method = "random")
y <- qqnorm(y, plot.it = FALSE)$x
plot(x, y, pch = 4, cex = 0.75)
hist(x, n = 32)
hist(y, n = 32)
