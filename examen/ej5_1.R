# Cargar el paquete necesario
library(ggplot2)

# Cargar los datos desde un archivo CSV
neonatos <- read.csv("neonatos.csv")

# Ajustar modelos de regresión
modelo_lineal <- lm(apgar5 ~ cigarros, data = neonatos)
modelo_inverso <- lm(apgar5 ~ I(1/cigarros), data = neonatos)
modelo_exponencial <- lm(log(apgar5) ~ cigarros, data = neonatos)

modelo_potencial <- lm(log(apgar5) ~ log(cigarros), data = neonatos)

# Comparar los modelos utilizando el criterio AIC
resultados <- data.frame(Modelo = c("Lineal", "Inverso", "Exponencial", "Logarítmico", "Potencial"),
                         AIC = c(AIC(modelo_lineal), AIC(modelo_inverso), AIC(modelo_exponencial),
                                 , AIC(modelo_potencial)))

# Imprimir los resultados
print(resultados)

# Visualizar los modelos ajustados
ggplot(neonatos, aes(x = cigarros, y = apgar5)) +
  geom_point() +
  geom_smooth(method = "lm", formula = y ~ x, se = FALSE, color = "blue") +
  geom_smooth(method = "lm", formula = y ~ I(1/x), se = FALSE, color = "red") +
  geom_smooth(method = "lm", formula = log(y) ~ x, se = FALSE, color = "green") +
  geom_smooth(method = "lm", formula = y ~ log(x), se = FALSE, color = "purple") +
  geom_smooth(method = "lm", formula = log(y) ~ log(x), se = FALSE, color = "orange") +
  theme_minimal()
