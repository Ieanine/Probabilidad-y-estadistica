
#Tema: Tablas de frecuencias

#1.- Leer la matriz de datos
data(iris)

#2.- Exploramos la matriz de datos
names(iris)

#3.- Explorar la dimension de la matriz
dim(iris)

#4.- Identificar los tipos de variables
str(iris)

#5.- Detectar valores perdidos
anyNA(iris)

#6.- Explorar una variable
iris$Species

iris$Sepal.Length

typeof(iris)

tabla_PL<-as.data.frame(table(PL = iris$Petal.Length))

tabla_PL

transform(tabla_PL,
          freqAc=cumsum(Freq),
          Rel= round(prop.table(Freq),3),
          RelAc=round(cumsum(prop.table(Freq)),3))
          
tabla_clases<-as.data.frame(table
                            (Petal.lenght = factor
                              (cut(iris$Petal.Length,
                                   breaks = 9))))
tabla_clases

transform(tabla_clases,
          freqAc=cumsum(Freq),
          Rel= round(prop.table(Freq),3),
          RelAc=round(cumsum(prop.table(Freq)),3))



          