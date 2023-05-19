neonatos <- read.csv("neonatos.csv")

varones <- neonatos[neonatos$sexo == "hombre", ]

q1 <- quantile(varones$cigarros, 0.25)
q3 <- quantile(varones$cigarros, 0.75)
iqr <- q3 - q1
limite_superior <- q3 + 1.5 * iqr

datos_atipicos <- sum(varones$cigarros > limite_superior)
print(datos_atipicos)
