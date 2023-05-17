# Crear los datos
x <- c(0, 1, 2, 3, 4, 5, 6, 7, 8, 9)
y <- c(2, 5, 8, 11, 14, 17, 20, 23, 26, 29)

# Crear el gráfico de dispersión
plot(x, y, main = "Diagrama de dispersión", xlab = "Variable x", ylab = "Variable y")

# Calcular la recta de regresión
modelo <- lm(y ~ x)

# Imprimir los resultados del modelo
summary(modelo)

# Calcular el coeficiente de regresión
coeficiente <- cor(x, y)

# Imprimir el coeficiente de regresión
coeficiente

# Calcular la recta de regresión
modelo <- lm(y ~ x)

# Dibujar el diagrama de dispersión
plot(x, y, main = "Diagrama de dispersión y recta de regresión", xlab = "Variable x", ylab = "Variable y")

# Agregar la recta de regresión al diagrama de dispersión
abline(modelo, col = "red")

# Calcular los residuos del modelo de regresión
residuos <- resid(modelo)

# Imprimir los residuos
print(residuos)
