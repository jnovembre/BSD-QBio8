# Get the population-specific means of one of the columns in a data
# frame.
library(dplyr)
data(iris)
iris_grouped <- group_by(iris, .data[["Species"]])
iris_summarized <- summarize(iris_grouped,
                             mean_value = mean(.data[["Petal.Length"]]))
iris_summarized <- as.data.frame(iris_summarized)
