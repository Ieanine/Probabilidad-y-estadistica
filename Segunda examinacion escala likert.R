#SEGUNDO EXAMEN PRACTICO
#ANALISIS DE DATOS EN ESCALA DE LIKERT
#LORENA IEANINE PEÑA SOTO

#Vamos a comenzar instalando las siguientes paqueterias y librerias

install.packages("likert")
install.packages("ggplot2")
library(likert)
library(ggplot2)

#para este ejercicio vamos a utilizar la matriz de datos de los resultados de la prueba PISA en 2009
#que se encuentra precargada en el paquete likert mediante el comando data

data("pisaitems")

#Le damos un nuevo nombre a la matriz de datos para su mejor uso
#Elegi el nombre de pisaexamen para mi matriz de datos

pisaexamen<-pisaitems

#Exploramos la matriz de datos

names(pisaexamen) #Nombre de las variables
typeof(pisaexamen) #Tipo de matriz de datos 
str(pisaexamen) #Tipo de variables

#visualizamos los valores que componen una variable
head(pisaexamen$CNT)
head(pisaexamen$ST34Q01)

#buscamos los valores perdidos
anyNA(pisaexamen)
#En este caso si hay datos perdidos

#numero total de datos perdidos en la matriz de datos
sum(is.na(pisaexamen)) 
#En total son 124687

#eliminacion de filas con datos perdidos
#y creamos una nueva matriz
pisaexamen2<-na.omit(pisaexamen)
#verificamos que la nueva matriz no tenga valores perdidos
anyNA(pisaexamen2)
#FALSE,no tiene valores perdidos, podemos continuar con esta matriz de datos

head(pisaexamen2)

#Empezamos a trabajar con nuestra nueva matriz de datos pisaexamen2


#Elegi la variable 34

#Agrupamiento de items
names(pisaexamen2)
items34<-pisaexamen2[,39:43] 
head(items34[1:5,1:5])

#Renombramos las etiquetas de respuesta
#En este caso se renombraron traducidas al idioma español

levels(items34)<-c("Totalmente en desacuerdo","En desacuerdo", "De acuerdo","Totalmente de acuerdo")

#colocar los nombres a los indicadores
#Tambien se tradujo a español

names(items34)<-c("a) Me llevo bien con la mayoria de mis maestros",
                  "b) La mayoria de mis maestros estan interesados en mi bienestar",
                  "c) La mayoria de mis maestros realmente escuchan lo que tengo que decir",
                  "d) Si necesito ayuda adicional, la recibire de mis maestros",
                  "e) La mayoria de mis maestros me tratan de manera justa")


l34<-likert(items34)

#Para analizar los datos generaremos distintos gráficos

#Grafico de barras, utilizaré este para mi analisis escrito.
plot(l34,type="bar",centered=FALSE)

#Grafico de barras con porcentajes
install.packages("plyr")
library(plyr)

plot(l34,type="bar",centered=TRUE, plot.percents=TRUE)

#Grafico de barras ordenado
plot(l34,group.order = colnames(items34))

#grafico de calor
plot(l34, type="heat")
