#Examen 1
#Alejandra Elizondo Trejo
#1847945
#24/09/24

#Asignamos datos al objeto

parcelas<- read.csv("https://raw.githubusercontent.com/mgtagle/Met_Est_2024/refs/heads/main/Datos_Examen/parcelas.csv")

#¿Existe evidencia de que los datos provienen de una distribución normal?¿Qué
#valor p obtuvo la prueba de normalidad de datos?

shapiro.test(parcelas$Diámetro)

#p-value = 0.1583 es mayor a 0.05, entonces los datos tienen una distribución
#normal

#promedio de DAP en parcelas A y B es de= 8.879
mean(parcelas$Diámetro)

 

#El valor de t (absoluto, es decir sin signo negativo) de la prueba es

t.test(parcelas$Diámetro)

#hacemos un subset de parcela A y otro de parcela B
#seleccionar las parcelas A mediante subset (Subconjunto)
parcela_A<- subset (parcelas, parcelas$Parcelas == "Parcela A")

#sacamos media de DAP de parcelas A = 8.44
mean(parcela_A$Diámetro)

#seleccionar las parcelas B mediante subset (Subconjunto)
parcela_B<- subset(parcelas, parcelas$Parcelas != "Parcela A")

#sacamos media de DAP de parcelas B = 9.318
mean(parcela_B$Diámetro)

