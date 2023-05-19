# Cargar el conjunto de datos
datos <- read.csv("neonatos.csv")

# Filtrar solo las mujeres recién nacidas
mujeres <- subset(datos, sexo == "mujer")

# Calcular el porcentaje de mujeres recién nacidas deprimidas
porcentaje_deprimidas <- mean(mujeres$apgar1 < 4) * 100
# Imprimir el resultado
print(porcentaje_deprimidas)
