library(ggplot2)
set.seed(123)
df <- data.frame(x1 = rdunif(10^6, 1, 10))  
ggplot(df, aes(x = x1)) +
    geom_bar(aes(y = after_stat(count/sum(count))), fill = "steelblue") +
    labs(title = "Distribución de frecuencias U(1,10)", x = "X", y = "Frecuencia relativa")

df  %>% 
    mutate(x2 = rdunif(10^6, 1, 10), suma = x1 + x2)  %>%
    ggplot(aes(x = suma)) +
    geom_bar(aes(y = after_stat(count/sum(count))), fill = "steelblue") +
    labs(title = "Distribución de frecuencias de la suma de dos variables U(1,10) independientes", x = "Suma", y = "Frecuencia relativa")

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
