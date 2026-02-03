# Instala la librería si no lo has hecho
# Elegir "not install from sources"
# install.packages("leaflet")

# Carga la librería
library(leaflet)

# Tomamos las primeras 100 filas de datosOrdenados
primeras_100_filas <- resultado[1:100, ]

# Crea el mapa
mapa <- leaflet(primeras_100_filas) %>%
  addTiles() %>%
  addMarkers(~longitud, ~latitud, popup = ~as.character(SeccionCensal))  

# Muestra el mapa
mapa




# Variedades -------------------------------------------------------------------------------------------------------------

# Mapa Algoritmo Figure-of-Merit (no tiene en cuenta la Renta)
#res <- c(2305004016, 2814802023, 2814802025, 4508102009, 4109505013, 4624403025, 4624403027, 4109109066, 1913002009, 2812301037, 
#        2811301013, 2809204040, 5029709027, 0601508013, 2813401053, 2809204043, 4109107051, 4109109063, 4618601014, 2817201006, 
#        4701001008, 2909401016, 4103805014, 2812301038, 2814802026, 4106904003, 4109301014, 0401307048, 0105903042, 5029704071, 
#        2104107021, 2812301040, 5029704070, 2805807016, 2890301024, 1802201008, 2906708066, 2804501024, 2809204042, 2814802022, 
#        2800601064, 5029709028, 4701001010, 2806504034, 2810601060, 2806503043, 2811302015, 4103805026, 0105903040, 3190701008, 
#        2809601012, 2806503042, 2809204041, 4516807020, 2801501012, 4516101011, 0105902045, 0200302024, 4625016032, 2909401017, 
#        2800504017, 0401307045, 0601508014, 2801401013, 3003001066, 4103403006, 1402110022, 1102006044, 4421603011, 1801401004, 
#        3002701057, 2800601062, 0905905047, 2807916124, 2902502018, 2814802021, 2807918062, 2812701046, 0819404001, 2806504035, 
#        0105904032, 2608401005, 0401306040, 2813401050, 1913003012, 5029704068, 5029704069, 2807403023, 1403802007, 0810103026, 
#        5029704065, 3302409018, 2800704031, 4109109065, 2810601063, 2816102013, 3304406027, 2800704033, 2800704030, 2807918060)

#FofMResultados <- datosOrdenados[datosOrdenados$SeccionCensal %in% res,]

# Crea el mapa
#mapa <- leaflet(FofMResultados) %>%
#  addTiles() %>%
#  addMarkers(~longitud, ~latitud, popup = ~as.character(SeccionCensal))  

# Muestra el mapa
#mapa





# Nota: mapa general
#mapa <- leaflet(datosGenerales) %>%
#  addTiles() %>%
#  addMarkers(~longitud, ~latitud, popup = ~as.character(SeccionCensal))  

#mapa




# Mapa de Catalunya
# Suponiendo que tienes un dataframe llamado datosGenerales
# y los límites de Cataluña son aproximadamente los siguientes:
#limite_latitud_inferior <- 40.0
#limite_latitud_superior <- 42.5
#limite_longitud_izquierda <- 0.0
#limite_longitud_derecha <- 3.5

# Filtrar las filas que están dentro de los límites de Cataluña
#datosCatalunya <- datosGenerales[datosGenerales$latitud >= limite_latitud_inferior &
#                                  datosGenerales$latitud <= limite_latitud_superior &
#                                  datosGenerales$longitud >= limite_longitud_izquierda &
#                                  datosGenerales$longitud <= limite_longitud_derecha, ]

# Ahora datosCatalunya contiene las filas que están dentro de los límites de Cataluña

# Crea el mapa
#mapa <- leaflet(datosCatalunya) %>%
#  addTiles() %>%
#  addMarkers(~longitud, ~latitud, popup = ~as.character(SeccionCensal))  

# Muestra el mapa
#mapa


