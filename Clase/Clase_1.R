#Clase 1
#Alejandra Elizondo Trejo
#1847945
#20/08/2024


# Problema 1--------------------------------------------------
#Ingresar en objetos la superficie (hectareas) reforestada por especie
Pinus<- 3140
Mezquite<- 1453
Encinos<- 450
Teka<- 1200
Juniperos<- 720


#generar un objeto más grande donde ocntenga a todos,
#al poner una "c" que es concatenar(enlazar)
Superficie<-c(Pinus, Mezquite, Teka, Juniperos,Encinos)
Sup<- c(3140, 1453, 450, 1200, 720)

#Operaciones: hectareas a m2
 Superficie*10000
 
 #Creación de gráfico de barras "barplot"
 nombre<- c("Pinus", "Mezquite","Teka", "Juniperos","Encino")
 supordenado<- sort(Sup, decreasing=T)
  barplot(supordenado, ylim= c(0,3500),
         col="blue", names.arg=nombre,
         xlab="Especies",
         ylab="Superficie (ha)",
         main="Reportes CONAFOR")
 
