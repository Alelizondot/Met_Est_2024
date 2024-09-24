conjunto<- read.csv("C:/Repositorios/Met_Est_2024/Tareas/DATOS_HW02.csv")

conjunto$Especie<- as.factor (conjunto$Especie)

boxplot(conjunto$Diametro ~ conjunto$Especie,
        xlab= "Especie",
        ylab= "Diametro (cm)",
        col="blue")

boxplot(conjunto$Altura ~ conjunto$Especie,
        xlab= "Especie",
        ylab= "Diametro (cm)",
        col="blue")
#seleccionar la especie F mediante subset (Subconjunto)
SpF<- subset (conjunto, conjunto$Especie == "F")

#Seleccionar exceptuando F
SpHC <- subset(conjunto, conjunto$Especie != "F")

#
tapply(conjunto$Altura,conjunto$Especie, mean)

tapply(conjunto$Diametro,conjunto$Especie, mean)
 
#hacer un subset donde sean mayores o iguales a la media de la altura
SpHpro <- subset(conjunto, conjunto$Altura >= mean(conjunto$Altura))

#hacer un subset donde sean menores o iguales a la media de la altura
SpLpro <- subset(conjunto, conjunto$Altura <= mean(conjunto$Altura))

#saber el valor atipico de la boxplot de altura
which(conjunto$Altura>20)

#los datos se encuentran en en las filas 18 y 24
conjunto[c(18,24),]

#para ver de la 18 a la 24
conjunto[18:24,]
