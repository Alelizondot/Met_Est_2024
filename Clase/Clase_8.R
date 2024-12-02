#Clase 8
#Alejandra Elizondo Trejo
#1847945
#28/10/2024

#Regresión líneal
geyser<- read.csv("C:/Repositorios/Met_Est_2024/Clase/erupciones.csv", 
                  header = T)
#primero se identifica cual es la independiente y la dependiente, despues se 
#coloca primero la independiente (x) y despues la dependiente (y)
plot(geyser$waiting, geyser$eruptions,
     xlab="Tiempo de espera (min)",
     ylab= "Duración (min)",
     col="blue")

#Rango de duración de erupciones en minutos
range(geyser$eruptions)

#Rango de duración de espera entre erupción-erupción en minutos
range(geyser$waiting)

#hay que saber si existe una relación lineal entre los 2 valores
cor.test(geyser$eruptions,geyser$waiting)
#se obtuvo un valor de 0.9, casi 1, es un valor significativo y positivo

#Nuestra pregunta es ¿podemos predecir el tiempo de la erupción en base al
#tiempo de espera entre dos erupciones consecutivas?

#REQUISITOS PARA PODER APLICAR LA REGRESIÓN LINEAL
#1 para cada observación en x hay que tener una en y, si no tengo en alguna de las 2 variables no
#podre realizar esto
#2 los datos son idnependientes entre ellos, pueden estar relacionados pero no dependientes
#3 que tenga una correlacion siginficativa para que se pueda obtener una linealidad
#4 Que los datos tengan una distribución normal

#para colocar "~" es AltGr + la tecla donde esta
#primero va la variable y y despues x, es para obtener la línea de tendencia central
lm(geyser$eruptions~ geyser$waiting)

#guardamos los datos en un objeto
gy.lm <- lm(geyser$eruptions~ geyser$waiting)

#Para ver los datos de lm usar "summary"
summary(gy.lm)

#Graficaas la línea de tendencia central
plot(geyser$waiting, geyser$eruptions,
     xlab="Tiempo de espera (min)",
     ylab= "Duración (min)",
     col="blue")
abline(gy.lm, col = "red", lwd = 2)

text (50,4, "y=-1.87+0.075*x")

#Agregar en la tabla el valor predicho
#"erutptions" son los valores observado y "predicho" son los valores predichos
geyser$predicho <- gy.lm$fitted.values

geyser$yprima <- -1.874016 + 0.075628 * geyser$waiting
# la fomrula de arriba es la formula de "y= alpha + B (x)"


geyser$residual <- gy.lm$residual^2

#ahora para calcular la duración del geyser dependiendo de el timepo de espera
#de 70 min, 75 min y 82 min
yprima <- c(70,75,82)
-1.87 + 0.075* yprima
