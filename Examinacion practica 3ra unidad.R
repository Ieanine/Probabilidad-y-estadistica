#Examinacion practica tercera unidad

#- Distribución de probabilidad / Datos discretos / Binomial / Ejercicios:

#Suponga que hay doce preguntas de opción múltiple en un examen de matemáticas. 
#Cada pregunta tiene cinco posibles respuestas, y sólo una de ellas es correcta. 
#Encuentre la probabilidad de tener cuatro o menos respuestas correctas si un estudiante intenta responder a cada pregunta al azar.

#Solución:
#Dado que sólo una de cada cinco respuestas posibles es correcta, la probabilidad de responder correctamente
#una pregunta al azar es de 1/5=0.2. Podemos encontrar la probabilidad de tener exactamente 4 respuestas
#correctas por intentos aleatorios de la siguiente manera:

#Probabilidad de escoger una respuesta de 5 posibles
#p= 1/5 

#Espacio muestral (12 preguntas en total)
#n=12

#Probabilidad de tener 4 respuestas correctas elegidas aleatoriamente
#k= 4

#Utilizaremos la siguiente función
dbinom(k, size=n, prob=0.2)

#Sustitucion
dbinom(4, size=12, prob=0.2)

#Resultado: 0.1328756

#Suponga que hay doce preguntas de opción múltiple en un examen de matemáticas. Cada pregunta tiene cinco
#posibles respuestas, y sólo una de ellas es correcta. Encuentre la probabilidad de tener cuatro o menos
#respuestas correctas si un estudiante intenta responder a cada pregunta al azar.

#Solución:
#Para encontrar la probabilidad de tener cuatro o menos respuestas correctas de forma aleatoria se utiliza la
#función dbinom con k=0,1,2,3,4.
# Otra forma más sencilla de calcular la probabilidad
#sum(dbinom(0:4, n, p))

#Sustitucion
sum(dbinom(0:4, 12, 1/5))

#Resultado: 0.9274445

#1.- ¿Cuál es la probabilidad de que 2 o 3 preguntas sean respondidas correctamente?

#Utilizaremos la siguiente función
dbinom(k, size=n, prob=0.2)

#Probabilidad de 2
dbinom(2, size=12, prob=0.2)
#Resultado:0.2834678

#Probabilidad de 3
dbinom(3, size=12, prob=0.2)
#Resultado: 0.2362232

#Probabilidad de 2 o 3
sum(dbinom(2:3, 12, 1/5))
#Resultado: 0.519691

#2.- Supongamos que la empresa Apple fabricó el Iphone 11S con una probabilidad de
#0.005 de ser defectuoso. El producto se envía en una caja que contiene 25 artículos.
#¿Cuál es la probabilidad de que una caja elegida al azar contenga un Iphone 11S
#defectuoso?

#Datos a utilizar

#P: 0.005
#n: 25
#k: 1
#q: 0.0005

#Utilizaremos la siguiente función
dbinom(k, size=n, prob=0.2)

#Sustitucion
dbinom(1, size=25, prob=0.005)

#Resultado: 0.1108317

#Distribución de probabilidad / Datos discretos / Poisson / Ejercicios

#Suponga que se desea saber el número de llegadas de los estudiantes de una Escuela Primaria en un lapso de
#15 minutos a la entrada de la escuela.
#Se puede suponer que la probabilidad de llegada de los estudiantes es la misma que cualquiera de los dos
#lapsos con la misma dirección siendo estas independientes a que llegue o no el estudiante.
#El número promedio de alumnos que llegan en un lapso de 15 minutos son 35.
#Para optimizar la llegada de los estudiantes evitando las aglomeraciones se requiere saber la probabilidad de
#que lleguen 50 alumnos en 15 minutos.

# Probabilidad de que 35 alumnos lleguen en 15 minutos a la entrada de la escuela
# x= número de alumnos
# lamda= tiempo de llegada.

#DATOS PARA 35 ALUMNOS

# x= 35 alumnos.
# lamda= 15 minutos.

#Utilizaremos la siguiente función
dpois(x,lamda)

#Sustitucion
dpois(35,15)

#Resultado: 4.310664e-06
#0.00000431

#DATOS PARA 36 ALUMNOS

# x= 36 alumnos.
# lamda= 15 minutos.

#Utilizaremos la siguiente función
dpois(x,lamda)

#Sustitucion
dpois(12,15)

#Resultado: 0.08285923

#Probabilidad de que 50 alumnos lleguen en 15 minutos a la entrada de la escuela
# x= número de alumnos
# lamda= tiempo de llegada.

#DATOS
#x=50 alumnos
#lamda=15 minutos

#Sustitucion:
dpois(50,15)

#Resultado:6.413142e-13
#0.00000000000641

#1.- ¿Cuál es la probabilidad de que a la escuela lleguen 34 alumnos en 5 minutos?
#DATOS
#x=34 alumnos
#lamda=5 minutos

#Sustitucion:
dpois(34,5)

#Resultado: 1.328444e-17
#0.000000000000000132

#2.-¿Cuál es la probabilidad de que a la salida de la escuela, se encuentren 60 alumnos en
#5 minutos?
#DATOS
#x=60 alumnos
#lamda=5 minutos

#Sustitucion:
dpois(60,5)
#Resultado: 7.023491e-43
#0.00000000000000000000000000000000000000000702

#3.- ¿Cuál es la probabilidad de que a la salida de la escuela, se encuentren 120 alumnos
#en 5 minutos?
#DATOS
#x=120 alumnos
#lamda=5 minutos

#Sustitucion:
dpois(120,5)
#Resultado: 7.577645e-118
#0.000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000757







