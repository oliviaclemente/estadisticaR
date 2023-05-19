n <- 10
p <- 0.2
lambda <- n * p

x <- 0:n
prob_binom <- dbinom(x, n, p)
prob_poisson <- dpois(x, lambda)

# Gráfico de barras
barplot(rbind(prob_binom, prob_poisson), beside = TRUE, names.arg = x, 
        legend.text = c("Binomial B(10, 0.2)", "Poisson P(2)"),
        xlab = "Número de éxitos", ylab = "Probabilidad",
        main = "Aproximación binomial-poisson")

n <- 30
p <- 0.1
lambda <- n * p

x <- 0:n
prob_binom <- dbinom(x, n, p)
prob_poisson <- dpois(x, lambda)

# Gráfico de barras
barplot(rbind(prob_binom, prob_poisson), beside = TRUE, names.arg = x,
        legend.text = c("Binomial B(30, 0.1)", "Poisson P(3)"),
        xlab = "Número de éxitos", 
        ylab = "Probabilidad", main = "Aproximación binomial-poisson")

approx_binomial_poisson <- function(n, p) {
  lambda <- n * p
  x <- 0:n
  prob_binom <- dbinom(x, n, p)
  prob_poisson <- dpois(x, lambda)

  # Gráfico de barras
  barplot(rbind(prob_binom, prob_poisson), beside = TRUE, names.arg = x, 
          legend.text = c(paste("Binomial B(", n, ",", p, ")"),
          paste("Poisson P(", round(lambda, 2), ")")),
          xlab = "Número de éxitos", ylab = "Probabilidad",
          main = "Aproximación binomial-poisson")
}

# Aproximación para B(100, 0.03)
approx_binomial_poisson(100, 0.03)

n_values <- 4:100
error_values <- numeric(length(n_values))

for (i in 1:length(n_values)) {
  n <- n_values[i]
  p <- 0.03  # Valor de p fijo
  lambda <- 3  # Valor de lambda fijo

  prob_binom <- dbinom(0:n, n, p)
  prob_poisson <- dpois(0:n, lambda)

  error_values[i] <- sum(abs(prob_binom - prob_poisson))
}

plot(n_values, error_values, type = "l", xlab = "n", ylab = "Error absoluto",
     main = "Error en la aproximación binomial-poisson (P(3))", col = "blue")
