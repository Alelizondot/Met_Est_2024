#Laboratorio 1
#Alejandra Elizondo Trejo
#1847945
#20/08/2024


#Gastos totales
300+240+1527+400+1500+1833
celular<- 300
transporte<- 1500
agua<- 240
renta<- 1527
internet<- 400
gasolina<- 1833

#Crea un objeto con con la suma total de los gastos mensuales
gastostotales<-c (celular+transporte+agua+renta+internet+gasolina)

#¿Cuánto gastaría en 5 meses?
gastostotales*5

 #¿Cúanto gastaría en un año escolar?
gastostotales*10

#AUTOEVALUACIÓN
gastos<- c(celular, transporte, agua, renta, internet, gasolina)
categorías<- c("gasolina", "renta", "transporte","internet","celular", "agua")

#creación de gráfico                                                                                    
#Aquí se crea la orden de cómo queremos que se ordenen los datos
ordenado<- sort(gastos, decreasing=T)


#Aquí se crea las ordenes para el gráfico
barplot(ylim= c(0,2000), ordenado, #orden que mostrará la gráfica, decreciente
    #rango del eje y
        names.arg= categorías,
        xlab= "Gastos",                                    
        ylab= "Precio",
        main= "Gastos mensuales")
 
