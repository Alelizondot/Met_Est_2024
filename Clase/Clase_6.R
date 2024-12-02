#Clase 6
#Alejandra Elizondo Trejo
#1847945
#15/10/2024

#Ejercicio1
Datos_pseo<- read.csv("C:/Repositorios/Met_Est_2024/Clase/tabla_E1.csv", header = T)
#NUESTRA HIPOTESIS NULA ES QUE LA MEDIA DEL GRUPO 1 Y DEL 2 ES IGUAL
#NUESTAR HIPOTESIS ALTERNATIVA ES QUE LA MEDIA DEL GRUPO 1 ES MAYOR A LA DEL GRUPO 2
#se usaría "alternative = greater" en vez de "alternative = less"

#se usara una prueba de normalidad, si sale quen o es normal no hay problema pq son pocos datos en este caso
shapiro.test()

#media de la altura de plantas sin micorrizas = 20.8 
mean (Datos_pseo$Grupo_1)

#media de la altura de plantas con micorrizas = 9.61
mean (Datos_pseo$Grupo_2)
 
#Prueba t, prueba muestras independientes, pregunto si la media del grupo 1 es MAYOR/GREATER que la del grupo 2 

t.test (Datos_pseo$Grupo_1 , Datos_pseo$Grupo_2, var.equal = T, alternative = "greater" )

# a= 0.05, nos dió p-value= 3.554e-10, entonces se rechaza la hipotesis nula = LA MEDIA DEL GRUPO 1 Y DEL 2 ES IGUAL 

#boxplots de cada grupo
boxplot(Datos_pseo$Grupo_1, Datos_pseo$Grupo_2 )



#EJERCICIO 2
#Prueba T dependiente
Datos_E2<- read.csv("C:/Repositorios/Met_Est_2024/Clase/Datos_E2.csv", header = T)

#H0= no hay diferencias en las medias de los grupos
#H1= la media de layer_2 es mayor a la de Layer_1

#Si: p ≥ 0.05, se acepta H0 (no hay diferencia significativa).
#Si: p < 0.05, se rechaza H0 (hay diferencia significativa).


#media L1 = 1.45
mean(Datos_E2$Layer_1)

#media L2 = 1.269
mean(Datos_E2$Layer_2)

#boxplot de datos antes y después
boxplot(Datos_E2$Layer_1,Datos_E2$Layer_2 )

#Prueba t, muestras dependientes
t.test(Datos_E2$Layer_1, Datos_E2$Layer_2, paired=T, alternative= "less")

#con "less" quiero decir que la media de layer_2 es mayor a la de Layer_1, ya que a simple vista se ve que la media
#de layer_1 es mayor que la de layer_2, entonces le estoy diciendo al programa que si la la media de layer_2 es mayor
#a la de layer_1


#si a=0.05 y p-value = 0.1718, entonces a<p-value se rechaza hipotesis nula y significa que no hay diferencia significativa,
