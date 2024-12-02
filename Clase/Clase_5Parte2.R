#Clase 5 Parte 2
#Alejandra Elizondo Trejo
#1847945
#23/09/2024

#Prueba de pendientes, muestras dependientes
#mismos idnividuos medidos en dos tiempos diferentes
#(2012 vs 2013) producción de semillas

tiempo<- read.csv ("C:/Repositorios/Met_Est_2024/Clase/mainproduccion.csv")


boxplot(tiempo$Kgsem ~ tiempo$Tiempo,
         col="pink",
         xlab = "Año",
         ylab= "Semillas (Kg)")

#para sacar las medias de los 2 años
tapply(tiempo$Kgsem, tiempo$Tiempo, mean)
#media 2012= 10.1 2013= 10.8 
 
#colocamos en la grfaica lineas que reperesenta la media de cada año
 
 abline(h=10.1, col= "red", lwd=3, lty = "dotdash")
 abline(h=10.8, col= "green", lwd=3, lty = "dotdash")
 
#La prueba de pendiente calcula si la diferencia de gramos (800gr) de esos 2 
#años es significativa
 
#quiero saber si hay diferencias solamente
t.test(tiempo$Kgsem ~ tiempo$Tiempo, paired=T)
#El "paired=T" le dice a la prueba que es una muestra dependiente
 
#hay diferencia, p-value = 0.2159, a=0.05, a<p-value entonces H0, 
#no hay diferencia


#quiero saber si el 2013 es mayor que 2012
t.test(tiempo$Kgsem ~ tiempo$Tiempo, paired=T,
       alternative = "greater") 
#p-value = 0.8921

#quiero saber si el 2013 es menor que 2012
t.test(tiempo$Kgsem ~ tiempo$Tiempo, paired=T,
       alternative = "less")  
#p-value = 0.1079
 