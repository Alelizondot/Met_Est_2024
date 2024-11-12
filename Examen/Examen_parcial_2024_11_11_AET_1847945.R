#Examen parcial 2
#Alejandra Elizondo Trejo
#1847945

#Codigo pregunta 15 y 16
set.seed(42) #para productividad
n <- 30
altura <- rnorm(n, mean = 170, sd =10) #Altura en cm
peso <- 0.5 * altura + rnorm(n, mean = 0, sd = 5)#Peso en kg, con algo de ruido

factor(altura)
factor(peso)
t.test(altura,peso)

cor.test(altura,peso)
