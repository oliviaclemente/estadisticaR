df <- read.csv("pib-usa.csv")
head(df)
nuevo_df <- data.frame(Año = df$Año, PIB = df$PIB)

library(ggplot2)
grafico <- ggplot(data = df, aes(x = Año, y = PIB))
grafico + geom_point()
grafico + geom_point() + geom_smooth(method = "lm")

df$log_PIB <- log(df$PIB)
grafico <- ggplot(data = df, aes(x = Año, y = log_PIB))
grafico + geom_point()
grafico + geom_point() + 
  labs(x = "Año", y = "Logaritmo del PIB", title = "Diagrama de Dispersión del Logaritmo del PIB") +
  theme_minimal()

df$log_PIB <- log(df$PIB)
ggplot(data = df, aes(x = Año, y = log_PIB)) +
  geom_point() +
  labs(x = "Año", y = "Logaritmo del PIB", title = "Diagrama de Dispersión del Logaritmo del PIB")

df$tasa_crecimiento <- c(NA, diff(df$PIB)/lag(df$PIB, default = 1)) * 100
print(df)

modelo <- lm(log_PIB ~ Año, data = df)
df$prediccion <- predict(modelo)
ggplot(data = df, aes(x = Año, y = log_PIB)) +
  geom_point() +
  geom_line(aes(y = prediccion), color = "red") +
  labs(x = "Año", y = "Logaritmo del PIB", title = "Modelo de Regresión Exponencial") +
  theme_minimal()
