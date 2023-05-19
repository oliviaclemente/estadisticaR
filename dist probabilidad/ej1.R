library(extraDistr)
library(kableExtra)
x <- 1:6
f <- ddunif(x, 1, 6)
df <- data.frame(x, f)
df %>% 
    kable() %>% 
    kable_styling(full_width = F)


library(ggplot2)

# Datos de la función de probabilidad
x <- 1:6
f <- rep(1/6, 6)  # Probabilidad igual para cada resultado

# Crear un dataframe con los datos
df <- data.frame(x, f)

# Dibujar la gráfica de dispersión de la función de probabilidad
ggplot(df, aes(x = x, y = f)) +
  geom_point(color = "steelblue") +
  labs(title = "Función de probabilidad uniforme U(1,6)", x = 
  "Número obtenido", y = "Probabilidad")

library(ggplot2)

# Datos de la función de probabilidad
x <- 1:6
f <- rep(1/6, 6)  # Probabilidad igual para cada resultado

# Crear un dataframe con los datos
df <- data.frame(x, f)

# Dibujar la gráfica de barras de la función de probabilidad
ggplot(df, aes(x = factor(x))) +
  geom_bar(aes(y = f), stat = "identity", fill = "skyblue", color = "black") +
  labs(x = "Resultado", y = "Probabilidad") +
  ggtitle("Función de Probabilidad de un Dado de Seis Caras") +
  theme_minimal()
