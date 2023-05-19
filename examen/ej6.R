# Cargar el paquete necesario
library(moments)

# Cargar los datos desde un archivo CSV
neonatos <- read.csv("neonatos.csv")

# Calcular el coeficiente de asimetría de la variable Apgar5
asimetria <- skewness(neonatos$apgar5)

# Calcular el coeficiente de apuntamiento de la variable Apgar5
apuntamiento <- kurtosis(neonatos$apgar5)

# Imprimir los resultados
print(paste("Coeficiente de asimetría:", asimetria))
print(paste("Coeficiente de apuntamiento:", apuntamiento))
