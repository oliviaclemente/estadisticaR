set.seed(123)  # Fijar una semilla para reproducibilidad

muestra_1 <- sample(1:10, size = 1000000, replace = TRUE)

frecuencias_1 <- table(muestra_1)
porcentajes_1 <- prop.table(frecuencias_1) * 100

barplot(porcentajes_1, names.arg = 1:10, xlab = "Variable aleatoria", ylab = "Frecuencia (%)",
        main = "Distribución de frecuencias de U(1,10)")

muestra_2 <- sample(1:10, size = 1000000, replace = TRUE)
suma_muestras <- muestra_1 + muestra_2
print(suma_muestras)

frecuencias_suma <- table(suma_muestras)
print(frecuencias_suma)
porcentajes_suma <- prop.table(frecuencias_suma) * 100
print(porcentajes_suma)

barplot(porcentajes_suma, xlab = "Suma de variables aleatorias", ylab = "Frecuencia (%)",
        main = "Distribución de frecuencias de la suma de U(1,10) y U(1,10)")

generar_suma <- function(n) {
  muestra <- matrix(sample(1:10, size = 1000000 * n, replace = TRUE), nrow = n)
  suma <- rowSums(muestra)
  return(suma)
}

suma_30_variables <- generar_suma(30)
print(suma_30_variables)

frecuencias_30 <- table(suma_30_variables)
print(frecuencias_30)
porcentajes_30 <- prop.table(frecuencias_30) * 100
print(porcentajes_30)

barplot(porcentajes_30, xlab = "Suma de 30 variables aleatorias", ylab = "Frecuencia (%)",
        main = "Distribución de frecuencias de la suma de 30 U(1,10)")

{r}	
library(ggplot2)
library(extraDistr)
set.seed(123)
df <- data.frame(x1 = rdunif(10^6, 1, 10))  
ggplot(df, aes(x = x1)) +
    geom_bar(aes(y = after_stat(count/sum(count))), fill = "steelblue") +
    labs(title = "Distribución de frecuencias U(1,10)", x = "X", y = "Frecuencia relativa")

    
{r}
library(tidyverse)
df  %>% 
    mutate(x2 = rdunif(10^6, 1, 10), suma = x1 + x2)  %>% 
    ggplot(aes(x = suma)) +
    geom_bar(aes(y = after_stat(count/sum(count))), fill = "steelblue") +
    labs(title = "Distribución de frecuencias de la suma de dos variables U(1,10) independientes", x = "Suma", y = "Frecuencia relativa")

    
{r}
distribucion_suma <- function(n) {
    df <- data.frame(suma = rep(0, 10^6))
    for (i in 1:n) {
        df[[paste0("x", i)]] <- rdunif(10^6, 1, 10)
        df$suma <- df$suma + df[[paste0("x", i)]]
    }
    return(df)
}

ggplot(distribucion_suma(30), aes(x = suma)) + 
    geom_bar(aes(y = after_stat(count/sum(count))), fill = "steelblue") +
    labs(title = paste0("Distribución de frecuencias de la suma de 30 variables U(1,10) independientes"), x = "Suma", y = "Frecuencia relativa")