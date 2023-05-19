# Cargar los paquetes necesarios
library(dplyr)
library(ggplot2)
library(broom)

# Cargar los datos desde un archivo CSV
neonatos <- read.csv("neonatos.csv")

# Crear un gráfico de dispersión para visualizar la relación entre las variables
ggplot(neonatos, aes(x = cigarros, y = apgar5)) +
  geom_point() +
  xlab("Número de cigarros fumados diariamente") +
  ylab("Puntuación Apgar5")

# Ajustar un modelo de regresión lineal
modelo_lineal <- lm(apgar5 ~ cigarros, data = neonatos)

# Obtener el resumen del modelo lineal
summary(modelo_lineal)

# Ajustar un modelo de regresión no lineal (por ejemplo, cuadrático)
modelo_no_lineal <- lm(apgar5 ~ cigarros + I(cigarros^2), data = neonatos)

# Obtener el resumen del modelo no lineal
summary(modelo_no_lineal)

# Comparar los modelos utilizando criterios como R-cuadrado ajustado, AIC o BIC
compare_models <- broom::glance(modelo_lineal, modelo_no_lineal)
compare_models
