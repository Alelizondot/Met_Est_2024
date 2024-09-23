#importar datos de github
read.csv("https://raw.githubusercontent.com/mgtagle/Met_Est_2024/main/Datos_Madera_MET.csv")
madera<-read.csv("https://raw.githubusercontent.com/mgtagle/Met_Est_2024/main/Datos_Madera_MET.csv", header = T)
 
#Para saber la si los datos son normales  y homogeneos

boxplot(madera$Peso_g~ madera$Especie)


#se ve que la media del peso de la gavia es mayor al de la barreta

#checar si el peso sigue una normalidad con la prueba shapiro
shapiro.test(madera$Peso_g)

#pureba de homogeneidad
bartlett.test( madera$Peso_g~madera$Especie)
#p-value: 0.0005715 por ende no es homogeneo ya que alpha=0.05

#aqui se agrega una nueva coolumna la cual obtendra la variable transformada

madera$peso_t<- log(madera$Peso_g+0.5)

boxplot (madera$peso_t ~ madera$Especie)

#la funcion log NO FUNCIONÓ

t.test (madera$Peso_g~madera$Especie, var.equal= F)


#VARIABLE LADO C
boxplot(madera$Lado_C~ madera$Especie)
wich 