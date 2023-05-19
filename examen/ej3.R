p_aprobacion <- 0.6
n_alumnos <- 100

probabilidad_aprobados <- pbinom(80, n_alumnos, p_aprobacion) - pbinom(59, n_alumnos, p_aprobacion)
probabilidad_aprobados
