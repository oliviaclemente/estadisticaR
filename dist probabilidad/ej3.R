library(tidyverse) 
# Incluye los siguientes paquetes:
# - dplyr: para el preprocesamiento y manipulación de datos.
# - ggplot2: para la representación gráfica.
# - purrr: para aplicar funciones a vectores. 
library(extraDistr) # para distribuciones de probabilidad adicionales.
library(knitr) # para el formateo de tablas.
library(kableExtra) # para personalizar el formato de las tablas.

lambda <- 4
x <- 0:10  # Valores de la variable aleatoria X
prob <- dpois(x, lambda)  # Función de probabilidad de Poisson

# Gráfico de barras
barplot(prob, names.arg = x, xlab = "Número de llamadas", ylab = "Probabilidad", main = "Función de probabilidad de Poisson")

lambda <- 4
k <- 2
prob_less_than_2 <- ppois(k-1, lambda)  # Probabilidad acumulada hasta k-1

prob_less_than_2

lambda_5min <- 20
max_calls <- 30

prob_more_than_max_calls <- 1 - ppois(max_calls, lambda_5min)  # Probabilidad de que el número de llamadas sea mayor que max_calls

prob_more_than_max_calls
