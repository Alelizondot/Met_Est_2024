#Alejandra Elizondo Trejo
#1847945
#Analisis de varianza (ANOVA)
#Experimento de cuatro parajes y sus diámetros

#importar datos
paraje <- read.csv ("C:/Repositorios/Met_Est_2024/Clase/Datos_Rascon_Anova.csv", header = T)
paraje$Paraje <- as.factor(paraje$Paraje)


boxplot(paraje$DAP ~ paraje$Paraje)

tapply(paraje$DAP, paraje$Paraje, mean)
tapply(paraje$DAP, paraje$Paraje, var)

#para ver la normalidad de los datos
shapiro.test(paraje$DAP)

#para ver la homogeneidad de varianzas
bartlett.test(paraje$DAP ~ paraje$Paraje)


par.aov <- aov(paraje$DAP ~ paraje$Paraje)

summary(par.aov)


#Prueba de Tukey

TukeyHSD(par.aov)
plot (TukeyHSD(par.aov))
