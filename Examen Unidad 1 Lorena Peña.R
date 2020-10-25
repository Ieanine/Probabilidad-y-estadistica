#Examinación de la unidad 1, inserta el código para
#activar lo que se te indica. Guarda tu script y envíalo
#por classroom antes del martes.
#Importante: En caso de detectar plagio, se te anulará
#el apartado correspondiente.


#Vas a trabajar con la matriz de datos
#"millas" que se te proporciona a continuación.

millas<-datos::millas

#Realizar los siguientes pasos:


#1.- Explora la matriz de datos millas 
#valor: 5 puntos por comando correcto.

?millas 
dim(millas)
names(millas) 
str(millas)
anyNA(millas)
typeof(millas)
View(millas)

#Mi data frame se llama millas_31

millas_31<-as.data.frame(millas)

#2.- Determina las medidas estadísticas descriptivas
#y de variablidad
#Importante: no calcules los errores.
#Valor: 5 puntos por comando correcto.

summary(millas_31)

install.packages("modeest")
library(modeest)

#Calcular la moda de cada VARIABLE
#es mfv() son 11 variables en total

mfv(millas_31$fabricante)
mfv(millas_31$modelo)
mfv(millas_31$cilindrada)
mfv(millas_31$anio)
mfv(millas_31$transmision)
mfv(millas_31$traccion)
mfv(millas_31$ciudad)
mfv(millas_31$autopista)
mfv(millas_31$combustible)
mfv(millas_31$clase)

#calcular la varianza de cada datop, solo de las variables cuantitativas

var(millas_31$cilindrada)
var(millas_31$anio)
var(millas_31$cilindros)
var(millas_31$autopista)
var(millas_31$ciudad)

#calcular la desviacion estandar de los datoss, igual solo los datos cuantitativos

sd(millas_31$cilindrada)
sd(millas_31$anio)
sd(millas_31$cilindros)
sd(millas_31$autopista)
sd(millas_31$ciudad)

#calcular el coeficiente de variacion

install.packages("FinCal")
library(FinCal)
                
coefficient.variation(sd=sd(millas_31$cilindrada),
                      avg=mean(millas_31$cilindrada))

coefficient.variation(sd=sd(millas_31$anio),
                      avg=mean(millas_31$anio))

coefficient.variation(sd=sd(millas_31$cilindros),
                      avg=mean(millas_31$cilindros))

coefficient.variation(sd=sd(millas_31$autopista),
                      avg=mean(millas_31$autopista))

coefficient.variation(sd=sd(millas_31$ciudad),
                      avg=mean(millas_31$ciudad))

coefficient.variation(sd=sd(millas_31$cilindrada),
                      avg=mean(millas_31$cilindrada))


#3.- Construye:

#Para construir mis gráficas Instalo tidyverse

install.packages("tidyverse")
install.packages("RColorBrewer")

#y abro las librerias

library(tidyverse)
library(RColorBrewer)

#A) Un gráfico de dispersión con las variables cilindrada y autopista
    #el color lo indica la variable clase. 
    #Valor Total: 20 puntos
    #(10 puntos por comando activado correcto).
    #(10 punto por la generación del gráfico).

dispersion_1<-ggplot(millas_31, aes(x=cilindrada, y=autopista, color=clase))+
    geom_point()

#Visualizacion del gráfico.

dispersion_1


#B) Un gráfico boxplot con las variables transmisión y ciudad
    #El color lo indica la variable transmisión    
    #El título del gráfico es Transmisión de autos en ciudad
    #Coloca la etiqueta "Transmisión" en el eje x 
    #Coloca la etiqueta "Ciudad" en el eje y 
    #Valor Total: 20 puntos
    #(10 puntos por comando activado correcto).
    #(10 punto por la generación del gráfico del gráfico).

#Gráfico boxplot

boxplot<-ggplot(millas_31,aes(factor(transmision), 
                              ciudad, fill=transmision))+
    geom_boxplot()+
    ggtitle("Transmisión de autos en ciudad")+
    xlab("Transmision")+
    ylab("ciudad")

#visualizamos el gráfico
boxplot


#C) UnValor gráfico de barras para la variable "cilindros" 
    # Total: 20 puntos
    #(10 puntos por comando activado correcto).
    #(10 punto por la generación del gráfico).

attach(millas_31)
tabla_31<-table(millas_31$cilindros)

#visualizamos la variable x 
tabla_31

#Especificamos la paleta de colores para la gráfica
color=c("lavender","lightcyan","lightpink","lightgoldenrodyellow")

#Construimos el gráfico de la variable x-cilindros
barplot(tabla_31,xlab="cilindros", ylab="frecuencias", 
        main="Gráfico de barras de Cilindros", col=color)

