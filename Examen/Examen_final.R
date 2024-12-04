#Alejandra Elizondo Trejo
#04/12/24
#1847945
#Exámen_final

#Datos por grupo
fertilizante_A <- c(12, 15, 14, 10, 13, 11, 16, 12, 14, 13, 12, 15, 14, 10, 11)
fertilizante_B <- c(20, 22, 19, 21, 23, 22, 20, 19, 21, 20, 22, 23, 19, 21, 22)
fertilizante_C <- c(16, 17, 18, 15, 14, 16, 17, 18, 15, 14, 16, 17, 18, 15, 14)
Planta <- seq_along(1:45)

#Crear el data frame
datos <- data.frame (
  Planta = Planta,
  Tiempo = c(fertilizante_A, fertilizante_B, fertilizante_C),
  Fertilizante = factor(rep(c("FA", "FB", "FC"), each = 15))
)

#Normalidad de los datos
shapiro.test(datos$Tiempo)

#El p value es mayor a 0.05, los datos no tienen una distribución normal

#Homogeneidad de varianzas
bartlett.test(datos$Tiempo ~ datos$Fertilizante)

#El p value es mayor a 0.05, las varianzas no son homogeneas

#Aunque no se cumplan estos supuestos se sigue con la prueba ANOVA
datos.aov <- aov(datos$Tiempo ~ datos$Fertilizante)

#Para ver los datos 
summary(datos.aov)

#P value dió 2e-16, entonces es mucho menor a 0.05, se rechaza H0 (nula) y se acpeta H1
#hay diferencia significativa entre las medias de los grupos.


