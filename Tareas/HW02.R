#1847495
#Alejandra Elizondo Trejo
#27/08/24
#HW02

#Importar la base de datos a R en un objeto llamado conjunto
getwd()
conjunto<- read.csv("C:/Repositorios/Met_Est_2024/Tareas/DATOS_HW02.csv")

#SELECCIÓN DE DATOS

#calcular media de altura
mean(conjunto$Altura)

#Aplicar funcion subset para variable Altura

#datos iguales o menores a la media en un objeto que se llame H.media
H.media<- which(conjunto$Altura<= 14.6486)

#datos menores a 16.5m en un objeto que se llame H.16
H.16 <- which(conjunto$Altura< 16.5)

#Aplicar funcion subset para variable Vecinos
#arboles que tenagn un numero de vecinos iguales o menores a 3
"Vecinos-3" <- which(conjunto$Vecinos<= 3)
#arboles que tengan un numero d evecinos mayores a 4
"Vecinos-4" <- which(conjunto$Vecinos> 4)

#Aplicar funcion subset para variable Diametro
#calcular media de Diametro
mean(conjunto$Diametro)

#Diametros menores a la media
"DBH-media" <- which(conjunto$Diametro< 15.794)
#Diametros mayores a 16
"DBH-16" <- which(conjunto$Vecinos> 16)

#Aplicar funcion subset para variable Especie
#Incluir la especie Cedro rojo
#Comentario: no sé cual de todas las letras (F,C,H) es la especie
#Incluir la especie Tsuga heterófolia y Doughlasia verde
#Comentario: no sé cual de todas las letras (F,C,H) es la especie

#Determinar cuantas observaciones son menores o iguales a 16.9cm de diametro
sum(conjunto$Diametro <= 16.9)

#Determinar cuantas observaciones son mayores a 18.5m de altura
sum(conjunto$Altura >18.5)

#VISUALIZACIÓN DE DATOS
#generar con la hist hostogramas

#Altura
hist(conjunto$Altura)
#H.media
hist(H.media)
#H.16
hist(H.16)


#Vecinos
#para convertir a numerico
conjunto$Vecinos <- as.numeric(as.character(conjunto$Vecinos))
hist(conjunto$Vecinos)
#Vecinos-3
hist(`Vecinos-3`)
#Vecinos-4
hist(`Vecinos-4`)


#Diamtero
hist(conjunto$Diametro)
#DBH-media
hist(`DBH-media`)
#DBH-16
hist(`DBH-16`)

#ESTADISTICAS BÁSICAS
#Altura
mean(conjunto$Altura)
#H.media
mean(H.media)
#H.16
mean(H.16)


#Vecinos
#para convertir a numerico
conjunto$Vecinos <- as.numeric(as.character(conjunto$Vecinos))
mean(conjunto$Vecinos)
#Vecinos-3
mean(`Vecinos-3`)
#Vecinos-4
mean(`Vecinos-4`)


#Diamtero
mean(conjunto$Diametro)
#DBH-media
mean(`DBH-media`)
#DBH-16
mean(`DBH-16`)

