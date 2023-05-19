neonatos <- read.csv("neonatos.csv")

modelo <- lm(apgar5 ~ tabaco + cigarros, data = neonatos)

nuevo_datos <- data.frame(tabaco = "Si", cigarros = 3)

apgar5_esperada <- predict(modelo, newdata = nuevo_datos)
print(apgar5_esperada)
