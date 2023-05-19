lambda <- 1/50  # Tasa lambda

f_densidad <- function(x) {
  ifelse(x >= 0, lambda * exp(-lambda * x), 0)
}

prob_menos_50 <- 1 - exp(-lambda * 50)
print(prob_menos_50)

prob_mas_100 <- 1 - (1 - exp(-lambda * 100))
print(prob_mas_100)

prob_entre_50_100 <- exp(-lambda * 50) - exp(-lambda * 100)
print(prob_entre_50_100)

cuartil_25 <- -log(0.75) / lambda
cuartil_50 <- -log(0.5) / lambda
cuartil_75 <- -log(0.25) / lambda

print(cuartil_25)
print(cuartil_50)
print(cuartil_75)
