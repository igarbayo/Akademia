
# Lectura del fichero con los valores FofM

FofM = read.csv2("FofM.csv", header=TRUE, sep=";", dec=",")
# FofM$SeccionCensal[1:7933] <- sprintf("%010d", FofM$SeccionCensal[1:7933])
FofM=FofM[,1:2]
FofM$SeccionCensal <- as.numeric(FofM$SeccionCensal)

FofM$FofM <- gsub("%", "", FofM$FofM)
FofM$FofM <- gsub(",", ".", FofM$FofM)
FofM$FofM <- gsub(" ", "", FofM$FofM)
FofM$FofM <- as.numeric(FofM$FofM)


# Juntado de los dataframes para crear la columna FofM
datosFofM <- merge(datosGenerales, FofM, by="SeccionCensal")


# Creamos Re
datosFofM$Re=0
# Asignamos la renta media por hogar del 2016
for (j in 1:nrow(datosFofM)) {
    datosFofM[j,"Re"] = as.numeric(datosFofM[j,"RentaHogar2016"])
}

# Como entra en juego la renta, descartamos las filas en las que no tenemos datos
datosFofM <- datosFofM[complete.cases(datosFofM$Re), ]

# Escalamos los parámetros
datosFofM$FofM = datosFofM$FofM/max(datosFofM$FofM)
# Escalamos para que sume en la fórmula
datosFofM$FofM = 1- datosFofM$FofM

# Ordena las filas de "datosGenerales" de mayor a menor según la columna "P"
datosOrdenados <- datosFofM[order(-datosFofM$FofM), ]

# Elimina las filas cuya renta es menor que 36900 o mayor que 45072
datosOrdenados <- datosOrdenados[datosOrdenados$Re >= 54.000 & datosOrdenados$Re <= 240.000, ]


# Algoritmo para Ordenación de Momentos
contador=0
# creating a matrix with 0 rows 
# and columns 
mat = matrix(ncol = 0, nrow = 0)
# converting the matrix to data 
# frame
resultado=data.frame(mat)

# Elimina las filas cuya Momento no es el más favorable (-1<=M<=1)
for (f in 1:nrow(datosOrdenados)) {
    if (datosOrdenados[f,"M"]==1 & contador <100) {
        resultado <- rbind(resultado, datosOrdenados[f,])
        contador=contador+1
    }
}
if (contador<100) {
    for (f in 1:nrow(datosOrdenados)) {
        if (datosOrdenados[f,"M"]==0.75 & contador<100) {
            resultado <- rbind(resultado, datosOrdenados[f,])
            contador=contador+1
        }
    }
} 
if (contador<100) {
    for (f in 1:nrow(datosOrdenados)) {
        if (datosOrdenados[f,"M"]==0.5 & contador<100) {
            resultado <- rbind(resultado, datosOrdenados[f,])
            contador=contador+1
        }
    }
}


