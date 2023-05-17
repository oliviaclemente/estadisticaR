# Leer el archivo "colesterol.csv" y crear el data frame
df <- read.csv("colesterol.csv", header = TRUE)



# Mostrar el data frame
print(df)

# Crear la nueva columna de IMC
df$IMC <- df$peso / (df$altura/100)^2

# Mostrar el data frame actualizado
print(df)

# Recodificar la columna IMC en la variable obesidad
df$obesidad <- cut(df$IMC,
                   breaks = c(-Inf, 18.5, 24.5, 30, Inf),
                   labels = c("Bajo peso", "Saludable", "Sobrepeso", "Obeso"),
                   right = FALSE)

# Mostrar el data frame actualizado
print(df)

# Seleccionar las columnas nombre, sexo y edad
nuevo_df <- df[, c("nombre", "sexo", "edad")]

# Mostrar el nuevo data frame
print(nuevo_df)

# Seleccionar las columnas nombre, sexo y edad
nuevo_df <- subset(df, select = c("nombre", "sexo", "edad"))

# Mostrar el nuevo data frame
print(nuevo_df)

# Eliminar la columna "nombre"
df_anonimizado <- subset(df, select = -c(nombre))

# Mostrar el data frame anonimizado
print(df_anonimizado)

# Reordenar las columnas colocando "sexo" antes que "edad"
df_reordenado <- df[, c("sexo", "edad", names(df)[-c(which(names(df)=="sexo"), which(names(df)=="edad"))])]

# Mostrar el data frame reordenado
print(df_reordenado)

# Filtrar el data frame para quedarse con las mujeres
df_mujeres <- subset(df, sexo == "mujer")

# Mostrar el data frame filtrado
print(df_mujeres)

# Filtrar el data frame para quedarse con los hombres mayores de 30 años
df_hombres_mayores <- subset(df, sexo == "hombre" & edad > 30)

# Mostrar el data frame filtrado
print(df_hombres_mayores)


# Filtrar el data frame para eliminar las filas con datos perdidos en "colesterol"
df_filtrado <- df[complete.cases(df$colesterol), ]

# Mostrar el data frame filtrado
print(df_filtrado)

# Ordenar el data frame según la columna "nombre"
df_ordenado <- df[order(df$nombre), ]

# Mostrar el data frame ordenado
print(df_ordenado)

library(dplyr)

# Ordenar el data frame según la columna "nombre"
df_ordenado <- arrange(df, nombre)

# Mostrar el data frame ordenado
print(df_ordenado)
