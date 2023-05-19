# Leer el archivo CSV "neonatos" y almacenarlo en un data frame llamado "datos"
datos <- read.csv("neonatos.csv")

# Filtrar solo los datos de los recién nacidos de madres fumadoras durante el embarazo
fumadoras <- subset(datos, tabaco == "Si")

# Calcular el decil 3 de la puntuación Apgar1 de los recién nacidos de madres fumadoras
decil_3 <- quantile(fumadoras$apgar1, probs = 0.3)

print(decil_3)

# Imprimir el resultado
cat("Decil 3 de la puntuación Apgar1 de los recién nacidos de madres fumadoras:", decil_3, "\n")
