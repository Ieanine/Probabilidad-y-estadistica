#segunda parte de la examinacion práctica de la tercera unidad
#LORENA IEANINE PEÑA SOTO

#1.- Distribución de probabilidad / Datos continuos / Normal / Ejercicios

#X es una variable normalmente distribuida con una media de 30 y una desviación
#estándar de 4.

#Encontrar: a) P(x < 40), b) P( x > 21), c) P(30 < x < 35).

#a) P(x < 40)

#conocemos lo siguiente
#???? = 30 #media
#???? = 4 #desviación estandar

#manual: 40-30 entre 4: 2.5

pnorm(2.5)
pnorm(40,mean=30, sd=4, lower.tail=TRUE)

#Resultados: 0.9937903

#b) P( x > 21)

#conocemos lo siguiente
#???? = 21 #media
#???? = 4 #desviación estandar

#manual: 21-30 entre 4: -2.25
pnorm(-2.25)
pnorm(21,mean=30, sd=4, lower.tail=TRUE)

#Resultados: 0.01222447

#c) P(30 < x < 35).

#Z: 30-30 entre 4: 0
pnorm(0)

#Z: 35-30 entre 4: 1.25
pnorm(1.25)

pnorm(35,mean=30, sd=4, lower.tail=TRUE)-pnorm(30,mean=30, sd=4, lower.tail=TRUE)

#Resultados: 0.3943502

#1.- Distribución de probabilidad / Datos continuos / Normal / Ejercicio
#X es una variable normalmente distribuida con una media de 45 y una desviación
#estándar de 2.
#Encontrar: a) P( x < 75), b) P( x > 13), c) P(60 < x < 82).

#Conocemos

#???? = 45 #media
#???? = 2 #desviación estandar

#a) P( x < 75)

#manual: 75-45 entre 2: 15

pnorm(15)
pnorm(75,mean=45, sd=2, lower.tail=TRUE)

#Resultado: 1

#b) P( x > 13)

#manual: 13-45 entre 2: -16

pnorm(-16)
pnorm(13,mean=45, sd=2, lower.tail=TRUE)

#Resultado: 6.388754e-58
#0.000000000000000000000000000000000000000000000000000000000638

#c) P(60 < x < 82)

#manual: 60-45 entre 2: 7.5
pnorm(7.5)

#manual: 82-45 entre 2: 18.5
pnorm(18.5)

pnorm(60,mean=45, sd=2, lower.tail=TRUE)
pnorm(82,mean=45, sd=2, lower.tail=TRUE)

pnorm(60,mean=45, sd=2, lower.tail=TRUE) - pnorm(82,mean=45, sd=2, lower.tail=TRUE)

#Resultado manual: 1
#-3.18634e-14 

#EJERCICIO DOS

#1.- Distribución de probabilidad / Datos continuos / Normal / Ejercicio

#El ingreso a una determinada universidad se determina mediante un examen nacional. Los resultados de esta prueba se
#distribuyen normalmente con una media de 500 y una desviación estándar de 100. Timmy quiere ser admitido en esta
#universidad y sabe que debe obtener mejores resultados que al menos el 70% de los estudiantes que tomaron el examen.
#Timmy presenta el examen y obtuvo 585 puntos. ¿Será admitido en esta universidad?

#a) Genera el siguiente gráfico:

n=1000
hist(rnorm(n,500,100),20, col= "blue")
abline(v=585,col=2)

#P( X < 585) > 70%?

pnorm(585,mean=500, sd=100) 
#[1] 0.8023375 

#Multiplica la probabilidad obtenida por 100

(0.8023375*100)
#Resultado: 80.23375

#Interpretacion: Timmy obtuvo una puntuación mejor que el 80.23% de los
#estudiantes que tomaron el examen y será admitido en esta
#universidad.

#El ingreso a la BENV se determina mediante la prueba estandarizada EXANII-II. Los resultados de esta prueba se
#distribuyen normalmente con una media de 1000 y una desviación estándar de 100. Tú quieres ser admitido en esta
#institución y sabes que debes obtener mejores resultados que al menos el 90% de los estudiantes que tomaron el examen.
#Presentas el examen y obtuviste 1185 puntos.
#¿Serás admitida/o en la BENV?

#a) Genera el gráfico con n=2600.
#b) Plantea el problema y realiza los cálculos de la probabilidad.
#c) Interpreta el resultado

n=2600
hist(rnorm(n,1000,100),20, col="purple")
abline(v=1185, col=46)

#P( X < 1185) > 90%?

pnorm(1185,mean=1000, sd=100) 
#Resultado: 0.9678432

#Multiplica la probabilidad obtenida por 100

(0.9678432*100)
#Resultado: 96.78432

#EJERCICIO

set.seed(10)
x <- rnorm(100,10) # Creación de una variable aleatoria de media 10
Media <- 10
test <- t.test(x, mu=Media) # Comparación de la media muestral con la media
print(test)

#RESULTADOS

#One Sample t-test
## data: x
## t = -1.4507, df = 99, p-value = 0.15
## alternative hypothesis: true mean is not equal to 10
## 95 percent confidence interval:
## 9.676689 10.050213
## sample estimates:
## mean of x

#Resultado: 9.863451
