# Create a data frame made up of the rows that have duplicated values
# of y. This is used to compare duplicated rows when analyzing a new
# data set.
set.seed(1)
n <- 20
dat <- data.frame(x = rnorm(n),y = sample(100, n, replace = TRUE))
counts <- table(dat$y)
duplicated_values <- as.numeric(names(counts)[counts > 1])
duplicated_rows <- which(is.element(dat$y, duplicated_values))
dat_duplicated_only <- dat[duplicated_rows, ]
