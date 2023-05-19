mu <- 220  # Media
sigma <- 20  # Desviación estándar

x <- seq(mu - 4*sigma, mu + 4*sigma, length.out = 100)
densidad <- dnorm(x, mean = mu, sd = sigma)

plot(x, densidad, type = "l", xlab = "Nivel de colesterol (mg/dl)",
ylab = "Densidad",
     main = "Función de densidad de N(220,20)")


distribucion <- pnorm(x, mean = mu, sd = sigma)

plot(x, distribucion, type = "l", xlab = "Nivel de colesterol (mg/dl)",
ylab = "Probabilidad acumulada",
     main = "Función de distribución de N(220,20)")

prob_menos_220 <- pnorm(220, mean = mu, sd = sigma)
print(prob_menos_220)

prob_mas_260 <- 1 - pnorm(260, mean = mu, sd = sigma)
print(prob_mas_260)

prob_entre_u_o <- pnorm(mu + sigma, mean = mu, sd = sigma) - pnorm(mu - sigma , mean = mu, sd = sigma)
porcentaje_entre_u_o <- prob_entre_u_o * 100
print(porcentaje_entre_u_o)

prob_entre_u_2o <- pnorm(mu + 2*sigma, mean = mu, sd = sigma) - pnorm(mu - 2*sigma, mean = mu, sd = sigma)
porcentaje_entre_u_2o <- prob_entre_u_2o * 100
print(porcentaje_entre_u_2o)

prob_entre_u_3o <- pnorm(mu + 3*sigma, mean = mu, sd = sigma) - pnorm(mu - 3*sigma, mean = mu, sd = sigma)
porcentaje_entre_u_3o <- prob_entre_u_3o * 100
print(porcentaje_entre_u_3o)

rango_intercuartilico <- qnorm(0.75, mean = mu, sd = sigma) - qnorm(0.25, mean = mu, sd = sigma)
print(rango_intercuartilico)
