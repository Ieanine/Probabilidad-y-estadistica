#TAREA REPLICAR EL ANALISIS DE DATOS EN ESCALA DE LIKERT
#Analisis de datos en escala Likert


install.packages("likert")
install.packages("ggplot2")
library(likert)
library(ggplot2)

#para este ejercicio vamos a utilizar la matriz de datos
#de los resultados de la prueba PISA en 2009
#que se encuentra precargada en el paquete likert
#mediante el comando data
data("pisaitems")

#Le damos un nuevo nombre a la matriz de datos
#para su mejor uso
#Elegi el nombre de pisanew para mi matriz de datos
pisanew<-pisaitems

#Exploramos la matriz de datos
names(pisanew)
typeof(pisanew)
str(pisanew)


#visualizamos los valores que componen una variable
head(pisanew$CNT)
head(pisanew$ST24Q01)

#buscamos los valores perdidos
anyNA(pisanew)
#En este caso si hay datos perdidos

#numero total de datos perdidos en la matriz de datos
sum(is.na(pisanew)) 
#En total son 124687

#eliminacion de filas con datos perdidos
#y creamos una nueva matriz
pisanew2<-na.omit(pisanew)
#verificamos que la nueva matriz no tenga valores perdidos
anyNA(pisanew2)
#FALSE,no tiene valores perdidos, podemos continuar con esta matriz de datos

head(pisanew2)

#Empezamos a trabajar con nuestra nueva matriz de datos pisanew2


#--------VARIABLE 24--------
#Agrupamiento de items
names(pisanew2)
items24<-pisanew2[,2:12] 
head(items24[1:6,1:6])

#Renombramos las etiquetas de respuesta
#En este caso se renombraron traducidas al idioma espaÃ±ol

levels(items24)<-c("Completamente en desacuerdo",
                   "En desacuerdo",
                   "De acuerdo",
                   "Completamente de acuerdo")

#colocar los nombres a los indicadores
#Tambien se tradujo a español

names(items24)<-c("Leo si es necesario",
                  "Leer es de mis pasatiempos favoritos",
                  "Me gusta hablar de libros con otras personas",
                  "Encuento dificil terminar un libro",
                  "Me siento feliz si recibo un libro como regalo",
                  "Para mi, leer es una perdida de tiempo",
                  "Disfruto ir a una libreria o bilioteca",
                  "Leo solo para obtener la informacion que necesito",
                  "No puedo estar sentado leyendo por mas de 5 minutos",
                  "Me gusta expresar mi opinion sobre un libro cuando lo he leido",
                  "Me gusta intercambiar libros con mis amigas-os")


l24<-likert(items24)

#Generamos el grafico de barras
plot(l24,type="bar",centered=FALSE)

#Grafico de barras con porcentajes
install.packages("plyr")
library(plyr)

plot(l24,type="bar",centered=TRUE, plot.percents=TRUE)


#Grafico de barras ordenado
plot(l24,group.order = colnames(items24))

#Grafico de densidad
likert.density.plot(l24,facet=TRUE,bw=0.5, 
                    legend = "Grafico de densidad")

#grafico de calor
plot(l24, type="heat")

#----- Variable 25-----

#agrupamiento de items
items25<-pisanew2[,substr(names(pisanew2),1,5)=='ST25Q']


#identificar las respuestas de agrupamiento
#y generamos una nueva variable.
names(items25)<-c("Magazines","Comics books","Fiction",
                  "Non-Fiction books","Newspapers")
l25<-likert(items25)

#visualizamos los niveles en los que se agrupan
#los indicadores
head(l25)

#Generamos el grafico de barras de las respuestas el conjunto.
plot(l25, type="bar", centered=FALSE)

#Grafico de barras con porcentajes
install.packages("plyr")
library(plyr)

plot(l25,type="bar",centered=TRUE, plot.percents=TRUE)

#Grafico de media y sd
#Activar la funcion plot.likert
#se encuentra en un script alterno.

plot.likert(as.numeric(pisanew2$ST24Q01),
            left="Completamente en desacuerdo",
            right="Completamente de acuerdo",
            plot.median=TRUE,
            plot.sd=TRUE) 
          


#------FIN DEL SCRIPT--------

#EJERCICIOS.

#Replica el script,
#analiza lo que activa cada comando y
#subelo a tu repositorio