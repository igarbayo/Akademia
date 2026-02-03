# Crear el dataframe resultadoProv con las columnas NProv y count
resultadoProv <- as.data.frame(table(resultado$NProv))

# Renombrar las columnas
colnames(resultadoProv) <- c("NProv", "count")


realidad = read.csv2("realidad.csv", header=FALSE, sep=";", dec=",")
colnames(realidad) = c("Provincia")
realidad <- merge(realidad, provincias, by="Provincia")

# Crear el dataframe resultadoProv con las columnas NProv y count
realidadProv <- as.data.frame(table(realidad$NProv))

# Renombrar las columnas
colnames(realidadProv) <- c("NProv", "count")
nuevas_filas <- data.frame(NProv = c("15", "27"), count = c(0, 0))
realidadProv <- rbind(realidadProv, nuevas_filas)


# Cálculo de porcentajes
resultadoProv$count <- resultadoProv$count/nrow(resultado)
realidadProv$count <- realidadProv$count/nrow(realidad)

resultadoProv <- subset(resultadoProv, resultadoProv$count != 0)



# Identificar los valores comunes en la columna NProv
valores_comunes <- merge(realidadProv, resultadoProv, by = "NProv", all = FALSE)

# Subconjugar el dataframe original usando los valores comunes
realidadProv <- realidadProv[realidadProv$NProv %in% valores_comunes$NProv, ]




# Fusionar los dataframes por la columna NProv
comparacion <- merge(resultadoProv, realidadProv, by = "NProv", all = FALSE, suffixes = c("_exp", "_real"))

# Reemplazar los NA por 0 en el dataframe comparacion
# comparacion[is.na(comparacion)] <- 0

# Calcular el RMSE y el R^2
rmse <- sqrt(mean((comparacion$count_real - comparacion$count_exp)^2, na.rm = TRUE))
r_squared <- cor(comparacion$count_real, comparacion$count_exp)^2

# Mostrar los resultados
cat("RMSE:", rmse, "\n")
cat("R:", r_squared, "\n")

# Gráfica comparativa
library(pyramid)
Prov <- 1:52
dat<- data.frame(comparacion$count_exp,comparacion$count_real,valores_comunes$NProv)
pyramid(dat,Llab="Experimento",Rlab="Realidad",Clab="Provincia",main="% de guarderías por provincia",Lcol="blue", Rcol="red", Cgap=0.5)





################################ Mierdas Varias


jaccard_index <- length(intersect(realidadProv, resultadoProv)) / length(union(realidadProv, resultadoProv))
jaccard_index

sqrt(sum((realidad - resultado)^2))






# COMPARATIVA CON TODOS LOS DATOS ORDENADOS
# Crear el dataframe resultadoProv con las columnas NProv y count
ordenProv <- as.data.frame(table(datosOrdenados$NProv))

# Renombrar las columnas
colnames(ordenProv) <- c("NProv", "count")

ordenProv$count <- ordenProv$count/nrow(datosOrdenados)

# Fusionar los dataframes por la columna NProv
comparacion <- merge(ordenProv, realidadProv, by = "NProv", all = TRUE, suffixes = c("_exp", "_real"))

# Reemplazar los NA por 0 en el dataframe comparacion
comparacion[is.na(comparacion)] <- 0

# Calcular el RMSE y el R^2
rmse <- sqrt(mean((comparacion$count_real - comparacion$count_exp)^2, na.rm = TRUE))
r_squared <- cor(comparacion$count_real, comparacion$count_exp)^2

# Mostrar los resultados
cat("RMSE:", rmse, "\n")
cat("R^2:", r_squared, "\n")

# Gráfica comparativa
library(pyramid)
Prov <- 1:52
dat<- data.frame(comparacion$count_exp,comparacion$count_real,Prov)
pyramid(dat,Llab="Experimento",Rlab="Realidad",Clab="Porcentaje",main="Comparativa",Lcol="blue", Rcol="red", Cgap=0.5)

