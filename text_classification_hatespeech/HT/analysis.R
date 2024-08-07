# Final result analysis

# Model: microsoft/deberta-v3-large

# Grad Accumulation = 1 or 2を検定


## F1 th=0.5
ga1_testF1 <- c(0.7, 0.623, 0.623, 0.6769, 0.6984)
ga2_testF1 <- c(0.5937, 0.6333, 0.5161, 0.6667, 0.6129)

mean(ga1_testF1)
sd(ga1_testF1)

mean(ga2_testF1)
sd(ga2_testF1)

t.test(ga1_testF1, ga2_testF1, var.equal = TRUE)


## F1 best th

ga1_testF1_best <- c(0.7761, 0.7042, 0.6441, 0.7213, 0.7164)
ga2_testF1_best <- c(0.6286, 0.6842, 0.6133, 0.6667, 0.6329)

mean(ga1_testF1_best)
sd(ga1_testF1_best)

mean(ga2_testF1_best)
sd(ga2_testF1_best)

t.test(ga1_testF1_best, ga2_testF1_best, var.equal = TRUE)

