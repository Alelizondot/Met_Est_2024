#Prueba T de una muestra, muestras independientes
#Realizar la comparación de una muestraexperimental vs una muestra teorética
#importar datos de la compu y asignarlos al objeto semillas
semillas<- read.csv("C:/Repositorios/Met_Est_2024/Clase/Datos_raw.csv", 
                    header = T)

#Prueba de normalidad de las semillas
shapiro.test(semillas$Peso)
#p= 0.3111, es normal ya que alfa=0.05 entra en H0

boxplot(semillas$Peso)
#la línea siguiente representa la media teoretica del peso de 6.2g
abline(h=6.2, col= "red", lwd=3, lty = "dotdash")

#la línea siguiente representa la media experimental de 5.7
abline(h=5.7, col= "green", lwd=3, lty = "dotdash")

#PruebaT:herramienta estadística que se utiliza para comparar las medias de dos 
#grupos y determinar si las diferencias observadas son significativas. 
#H0= media teorica=media observada
#H1=Media teorica =/= media observada

#realizamos prueba t, donde teoricamente mu=6.2
t.test(semillas$Peso, mu = 6.2)

#hay diferencia, p-value = 7.997e-15, a=0.05, a>p-value entonces H1,  hay 
#diferencia alternativa

#Existe diferencia entre el peso observado y el peso de la media teoretica
#Aceptamos la hipotesis alternativa

#sacar la media del peso de las semillas
mean(semillas$Peso)

#Media=5.7, le media teoretica es de 6.2


#Prueba T- Ejemplo 2------------------------------------------------------------------
#Ahora la media teorica es de 5.85
t.test(semillas$Peso, mu = 5.85)

#hay diferencia, p-value = 0.0007999, a=0.05, a>p-value entonces H1, hay 
#diferencia alternativa

boxplot(semillas$Peso)
#la línea siguiente representa la media teoretica del peso de 5.85g
abline(h=5.85, col= "red", lwd=3, lty = "dotdash")

#la línea siguiente representa la media experimental de 5.7
abline(h=5.7, col= "green", lwd=3, lty = "dotdash")

#Prueba T- Ejemplo 3------------------------------------------------------------------
#Ahora la media teorica es de 5.78
t.test(semillas$Peso, mu = 5.78)

#p-value = 0.06033, es mayor que a=0.05 entonces entra en H0, no hay diferencia
#significativa

boxplot(semillas$Peso)
#la línea siguiente representa la media teoretica del peso de 5.78g
abline(h=5.78, col= "red", lwd=3, lty = "dotdash")

#la línea siguiente representa la media experimental de 5.7
abline(h=5.7, col= "green", lwd=3, lty = "dotdash")






