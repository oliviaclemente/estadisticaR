#El conjunto de datos neonatos contiene información sobre una muestra de
#320 recién nacidos en un hospital durante un año que cumplieron el
#tiempo normal de gestación. Calcular el decil 3 de la puntuación Apgar1
#de los recién nacidos de madres fumadoras durante el embarazo.

neonatos_fumadoras <- neonatos[neonatos$madres_fumadoras == "SI", ]
apgar1_fumadoras <- neonatos_fumadoras$apgar1
apgar1_fumadoras_orden <- sort(apgar1_fumadoras)
print(apgar1_fumadoras_orden)
decil_3 <- apgar1_fumadoras_orden[96]
print(decil_3)
