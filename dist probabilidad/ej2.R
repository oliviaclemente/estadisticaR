library(kableExtra)
x <- 0:10
f <- dbinom(x, 10, 0.25)
df <- data.frame(x, f)
df %>% 
    kable() %>% 
    kable_styling(full_width = F)

library(ggplot2)

# Datos de la función de probabilidad
x <- 0:10
f <- dbinom(x, 10, 0.25)
df <- data.frame(x, f)

# Dibujar la gráfica de la función de probabilidad
ggplot(df, aes(x = x, y = f)) +
  geom_point(color = "steelblue") +
  geom_line(color = "steelblue", linetype = "dashed") +
  labs(title = "Función de probabilidad binomial", 
  x = "Número de aciertos", y = "Probabilidad")


library(ggplot2)
df$F <- pbinom(x, 10, 0.25)
ggplot(df, aes(x = x, y = F)) +
    geom_point(color = "steelblue") +
    labs(title = "Función de distribución B(10,0.25)",
    x = "Número de preguntas acertadas", y = "Probabilidad acumulada")

p_acumulada <- pbinom(3, 10, 0.25)
print(p_acumulada)

p_aprobacion <- pbinom(4, 10, 0.25, lower.tail = FALSE)
print(p_aprobacion)

p_notable <- pbinom(8, 10, 0.25) - pbinom(6, 10, 0.25)
print(p_notable)
