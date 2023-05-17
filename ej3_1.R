# Crear los datos
x <- c(0, 1, 2, 3, 4, 5, 6, 7, 8, 9)
y <- c(2, 5, 8, 11, 14, 17, 20, 23, 26, 29)

# Calcular la recta de regresión
modelo <- lm(y ~ x)

# Obtener los resultados del modelo de regresión
resultados <- summary(modelo)

# Extraer el valor del R cuadrado ajustado
r_cuadrado <- resultados$r.squared

# Imprimir el coeficiente de determinación
r_cuadrado
