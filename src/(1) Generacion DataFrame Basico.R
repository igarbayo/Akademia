# Colocar en el directorio de trabajo el archivo "DatosTratados.csv", "RentasCrudo.csv" y "localizacion.csv" (por defecto suele ser "Documentos")

datos = read.csv2("DatosTratados.csv", header=TRUE, sep=";", dec=",")
colnames(datos) = c("SeccionCensal","Total","(0-4)","(5-9)","(10-14)","(15-19)","(20-24)","(25-29)","(30-34)","(35-39)","(40-44)","(44-49)","(50-54)","(55-59)","(60-64)","(65-69)","(70-74)","(75-79)","(80-84)","(85-89)","(90-94)","(95-99)","(100+)","Total","(0-4)","(5-9)","(10-14)","(15-19)","(20-24)","(25-29)","(30-34)","(35-39)","(40-44)","(44-49)","(50-54)","(55-59)","(60-64)","(65-69)","(70-74)","(75-79)","(80-84)","(85-89)","(90-94)","(95-99)","(100+)","Total","(0-4)","(5-9)","(10-14)","(15-19)","(20-24)","(25-29)","(30-34)","(35-39)","(40-44)","(44-49)","(50-54)","(55-59)","(60-64)","(65-69)","(70-74)","(75-79)","(80-84)","(85-89)","(90-94)","(95-99)","(100+)")
localizacion = read.csv2("localizacion.csv", header=TRUE, sep=";", dec=",")
colnames(localizacion) = c("SeccionCensal", "longitud", "latitud")
momento = read.csv2("momento.csv", header=FALSE, sep=";", dec=",")
colnames(momento) = c("SeccionCensal", "pisos", "casas")


# Asignación de valores a los diferentes momentos
momento$pisos <- ifelse(momento$pisos == "++", 1,
                        ifelse(momento$pisos == "+", 0.5,
                               ifelse(momento$pisos == "=", 0,
                                      ifelse(momento$pisos == "-", -0.5,
                                             ifelse(momento$pisos == "--", -1, as.numeric(momento$pisos))
                                      )
                               )
                        )
)

momento$casas <- ifelse(momento$casas == "++", 1,
                        ifelse(momento$casas == "+", 0.5,
                               ifelse(momento$casas == "=", 0,
                                      ifelse(momento$casas == "-", -0.5,
                                             ifelse(momento$casas == "--", -1, as.numeric(momento$pisos))
                                      )
                               )
                        )
)

# Añadir un "0" a la izquierda de la columna SeccionCensal en las que haga falta para comparar
localizacion$SeccionCensal[1:7933] <- sprintf("%010d", localizacion$SeccionCensal[1:7933])

# M = media(pisos, casas)
momento$M <- rowMeans(momento[, c("pisos", "casas")], na.rm = TRUE)

# Elimina las columnas "pisos" y "casas"
momento <- momento[, !(names(momento) %in% c("pisos", "casas"))]


# nombres=read.csv2("NombresTratados.csv", header=FALSE,sep=";", dec=",")
# colnames(nombres)=c("A","B", "C", "D", "Nombre", "E", "SeccionCensal", "F")
# nombresBien <- nombres[,c("Nombre", "SeccionCensal")]


datosMezclados = datos[,1:23]
datosHombres=datos[,c(1,23:45)]
datosMujeres=datos[,c(1,46:67)]

rentas = read.csv2("RentasCrudo.csv", header=FALSE, sep=";", dec=",")
colnames(rentas) = c("SeccionCensal", "RentaPersona2016", "RentaPersona2015", "RentaHogar2016", "RentaHogar2015")

# Encuentra las filas que contienen la palabra "distrito" en la columna "SeccionCensal"
filas_a_eliminar <- grep("distrito", rentas$SeccionCensal, ignore.case = TRUE)

# Elimina las filas identificadas
rentas_filtrado <- rentas[-filas_a_eliminar, ]

# Modifica la columna "SeccionCensal" conservando solo lo que aparece antes del primer espacio
rentas_filtrado$SeccionCensal <- sub(" .*", "", rentas_filtrado$SeccionCensal)

# Completa las filas vacías

for (i in 2:nrow(rentas_filtrado)) {
  # Para cada una de las 4 rentas (k de 2 a 5)
  for (k in 2:5) {                
    if (rentas_filtrado[i, k] == " ") {
      # Busca el valor no vacío en la columna k hacia atrás en el dataframe
      for (j in (i - 1):1) {
        if (rentas_filtrado[j, k] != " ") {
          # Actualiza el valor de la columna k para la fila actual (i)
          rentas_filtrado[i, k] <- rentas_filtrado[j, k]
          break
        }
      }
    }
  }
}

# Filtra las filas que tienen al menos 6 caracteres en la columna "SeccionCensal"
rentas_filtrado <- rentas_filtrado[nchar(rentas_filtrado$SeccionCensal) >= 6, , drop = FALSE]
rentasBien <- rentas_filtrado

# Cambiamos tipo de dato para enlace correcto (pasan de strings a numeric, como los de datosMezclados)
rentasBien$SeccionCensal <- as.numeric(rentasBien$SeccionCensal) 
localizacion$SeccionCensal <- as.numeric(localizacion$SeccionCensal)


# Mezcla los dataframes por la columna "SeccionCensal"
datosGeneralesAux <- merge(datosMezclados, rentasBien, by = "SeccionCensal")
datosGeneralesHombresAux <- merge(datosHombres, rentasBien, by = "SeccionCensal")
datosGeneralesMujeresAux <- merge(datosMujeres, rentasBien, by = "SeccionCensal")

datosGeneralesAux2 <- merge(datosGeneralesAux, momento, by = "SeccionCensal")
datosGeneralesHombresAux2 <- merge(datosGeneralesHombresAux, momento, by = "SeccionCensal")
datosGeneralesMujeresAux2 <- merge(datosGeneralesMujeresAux, momento, by = "SeccionCensal")

datosGenerales <- merge(datosGeneralesAux2, localizacion, by="SeccionCensal")
datosGeneralesHombres <- merge(datosGeneralesHombresAux2, localizacion, by = "SeccionCensal")
datosGeneralesMujeres <- merge(datosGeneralesMujeresAux2, localizacion, by = "SeccionCensal")


# Comparación con Provincias
# Añadir un "0" a la izquierda de la columna SeccionCensal en las que haga falta para comparar con provincias
datosGenerales$SeccionCensal[1:7932] <- sprintf("%010d", datosGenerales$SeccionCensal[1:7932])

# Extraer los dos primeros caracteres de SeccionCensal y almacenarlos en NProv
datosGenerales$NProv <- substr(datosGenerales$SeccionCensal, 1, 2)

provincias = read.csv2("provincias.csv", header=FALSE, sep=";", dec=",")
colnames(provincias) = c("NProv", "Provincia")
provincias$NProv[1:9] <- sprintf("%02d", provincias$NProv[1:9])

datosGenerales <- merge(datosGenerales, provincias, by="NProv")
column_order <- c(setdiff(names(datosGenerales), "NProv"), "NProv")
datosGenerales <- datosGenerales[column_order]
