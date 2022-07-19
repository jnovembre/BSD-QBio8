# Test for a relationship between case/control status and treatment
# status in a case-control study. (In this particular example, since
# cases and controls are simulated independently of treatment, we
# should not expect the null hypothesis to be rejected.)
set.seed(1)
n <- 40
dat <- data.frame(status = sample(c("case", "control"), n, replace = TRUE),
                  treatment = sample(c("yes", "no"), n, replace = TRUE))
contingency_table <- table(dat)
res <- chisq.test(contingency_table)
pval <- res$p.value
