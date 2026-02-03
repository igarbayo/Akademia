# Creación del vector de pesos
Peso = 1:21
Peso[1]=0.20        # Muy Alta
Peso[2]=0.06        # Media
Peso[3]=0.02
Peso[4]=0.015        # Muy Baja
Peso[5]=0.08        # Media
Peso[6]=0.105        # Alta
Peso[7]=0.155        # Muy Alta
Peso[8]=0.125       # Alta
Peso[9]=0.10        # Media
Peso[10]=0.075       # Baja
Peso[11]=0.04      # Muy Baja
Peso[12]=0.02
Peso[13]=0.005
Peso[14]=0
Peso[15]=0
Peso[16]=0
Peso[17]=0
Peso[18]=0
Peso[19]=0
Peso[20]=0
Peso[21]=0

# Crear la columna P
for (j in 1:nrow(datosGenerales)) {         # fila j
    suma = 0
    for (i in 1:13) {                       # columna i
        if (Peso[i]!= 0) {
            if (i==1 | i==7) {              # Franjas 1 y 7 no penalizan por exceso
                if (datosGenerales[j,i+2]/datosGenerales[j,"Total"]<Peso[i]) {
                    suma = suma + abs(Peso[i] - (datosGenerales[j,i+2]/datosGenerales[j,"Total"]))/Peso[i]
                }
            } else {
                suma = suma + abs(Peso[i] - (datosGenerales[j,i+2]/datosGenerales[j,"Total"]))/Peso[i]
            }    
        } else {
            suma = suma + abs(Peso[i] - (datosGenerales[j,i+2]/datosGenerales[j,"Total"]))
        }
    }
    datosGenerales$Valoracion[j] = suma
}

# Cambia el nombre de la columna "Valoracion" a "P"
colnames(datosGenerales)[colnames(datosGenerales) == "Valoracion"] <- "P"

# Creamos Re
datosGenerales$Re=0
# Asignamos la renta media por hogar del 2016
for (j in 1:nrow(datosGenerales)) {
    datosGenerales[j,"Re"] = as.numeric(datosGenerales[j,"RentaHogar2016"])
}

# Eliminamos secciones sin RM2016
datosGenerales <- datosGenerales[complete.cases(datosGenerales$Re), ]

# Escalamos los parámetros
datosGenerales$P = datosGenerales$P/max(datosGenerales$P)
# Escalamos para que sume en la fórmula
datosGenerales$P = 1- datosGenerales$P

# Ordena las filas de "datosGenerales" de mayor a menor según la columna "P"
datosOrdenados <- datosGenerales[order(-datosGenerales$P), ]



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





