#1847945
#Alejandra Elizondo Trejo
#LabSemana3

#PARTE1: IMPORTAR DATOS
#Importar archivo csv
getwd()
datoscsv<- read.csv("C:/Repositorios/Met_Est_2024/Laboratorios/lab semana 2/DATOSLABS3.csv")
 
#Head para ver las primers filas
head(datoscsv)

#Ingresar datos de manera manual

dbh<- c(16.5, 25.3, 22.1, 17.2, 16.1, 8.1, 34.3, 5.4, 5.7, 11.2, 24.1,
        14.5, 7.7, 15.6, 10.4, 11.5, 14.3, 17.2, 16.8)

#Accesar datos de internet
#URL no seguras
#Comentario: no pude descargar el archivo de la profepa, entré a la página web 
# y aun ni así lo pude descargar

#URL seguras
#Comentario: no entendí

#PARTE2: OPREACIONES CON LA BASE DE DATOS
#Calcular media
mean (datoscsv$dbh)

#Calcular desviación estandar
sd(datoscsv$dbh)

#Selección mediante restricciones
#¿Cuantos individuos tienen un idametro menor < a 10 cm?
sum(datoscsv$dbh < 10)

#¿cuáles inidivudos son los que tienen un diametro menor a 10cm?
which(datoscsv$dbh < 10)

#excluir diametros de la parcela 2 y guardarlos en un objeto llamado datoscsv1y3
datoscsv1y3 <- datoscsv[!datoscsv$parcela=="2",]
head (datoscsv1y3)
#Seleccion de submuestra
#Seleccionar los diamteros iguales o menores a 10cm y guardarlo en un objeto
#llamado arbolesim10

arbolesim10<- subset(datoscsv, dbh <= 10)
head (arbolesim10)

#Media de diametros de datoscsv1y3
mean(datoscsv$dbh)

#Media de diametros de arbolesim10
mean(arbolesim10$dbh)

#PARTE3: REPRESENTACIÓN GRÁFICA

#asignamos a un objeto una base de datos
mamiferos<- read.csv("https://www.openintro.org/data/csv/mammals.csv")

#HISTOGRAMA
#trabajando con la variable total_sleep se hará un histograma
hist(mamiferos$total_sleep, #datos
     xlim= c(0,20), ylim= c(0,14), #cambiamos los limites de x & y) 
     main= "Total de horas de sueño de las 39 especies", #Cambiamos el titulo
     xlab="Horas de sueño", #Cambair eje de las x
     ylab = "Frecuencia", #cambiamos eje de las y
     las=1, #cambaimos orientación de y
     col= "blue")

#BARPLOT
data("chickwts")
head(chickwts[c(1:2,42:43, 62:64),])

#acomodamos los datos en columnas
feeds<- table(chickwts$feed)
#creamos la gráfica
barplot(feeds[order(feeds,decreasing=TRUE)],
        col="yellow",
        main="Frecuencias por tipos de alimentación",
        ylab="Número de Pollos",
        horiz=TRUE)
