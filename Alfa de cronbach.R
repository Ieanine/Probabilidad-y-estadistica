#ALFA DE CRONBACH

#Paquete a utilizar
install.packages("userfriendlyscience")
library(userfriendlyscience)

datos<-read.csv("BD_Likert.csv") #utilizo este comando para leer los datos porque tengo un error al importar el documento

#Exploracion de la matriz de datos

dim(BD_Likert) #Para conocer la dimension
names(BD_Likert) #Para saber el nombre de las variables
str(BD_Likert) #para saber los tipos de variables
anyNA(BD_Likert) #Para saber si existen datos perdidos
#En este caso si hay datos perdidos asi que tendre que poner un comando que omita esos datos.
typeof(BD_Likert) #Para saber el tipo de matriz con la que estoy trabajando.

anyNA(BD_Likert) #Para buscar los valores perdidos.
which(is.na(BD_Likert)) #Para localizar la posicion de los valores perdidos.

#Vamos a eliminar los datos perdidos, por lo que crearemos otra matriz de datos que ya este corregida
BD_Likert2<-na.omit(BD_Likert)
anyNA(BD_Likert2)

#Trabajaremos con la nueva matriz de datos

#Construcción de los constructos

#tarea
#1.- completar la construcción de los constructos D,E,F,G Y H 

attach(BD_Likert2)

names(BD_Likert)
constructo1<-data.frame(A1,A2,A3,A4,A5,A6,A7,A8) #A
constructo2<-data.frame(B1,B2,B3,B4) #B
constructo3<-data.frame(C1,C2,C3,C4,C5,C6) #C
constructo4<-data.frame(D1,D2,D3,D4,D5,D6,D7,D8,D9,D10,D11,D12,D13) #D TAREA
constructo5<-data.frame(E1,E2,E3,E4,E5,E6,E7,E8,E9,E10,E11) #E TAREA
constructo6<-data.frame(F1,F2,F3,F4,F5,F6,F7,F8) #F TAREA
constructo7<-data.frame(G1,G2,G3,G4,G5,G6,G7,G8) #G TAREA
constructo8<-data.frame(H1,H2,H3,H4)

#Calculamos el alfa de cronbach para cada uno de los constructos

scaleReliability(constructo1)
scaleReliability(constructo2) #VALOR AUSENTE
scaleReliability(constructo3)
scaleReliability(constructo4)
scaleReliability(constructo5)
scaleReliability(constructo6) #VALOR AUSENTE
scaleReliability(constructo7)
scaleReliability(constructo8) #VALOR AUSENTE

#Al presentar errores en la matriz de datos, es necesario localizar los coeficientes de los datos perdidos que nos arrojaban error, estos eran el 2, 6 y 8

install.packages("dplyr")
library(dplyr)

#En mi caso como ya tenia instalado el paquete ya solo lo active desde packages

names(BD_Likert2) #utilizamos names

const2<-select(BD_Likert2,18,29,4,5)
const6<-select(BD_Likert2,12,14,19,20,34,51,61,62)
const8<-select(BD_Likert2,4,8,9,10)

#Calculamos el alfa de cronbach 

#Utilizamos el paquete pysch

library(psych)

alpha(const2)
alpha(const6)
check.keys=TRUE
alpha(const8)
