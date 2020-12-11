#ACTIVIDAD EXTRA

#Voy a realizar una mineria de texto a traves de una nube
#de palabras las cuales sacaré de un escrito de reflexion sobre
#mi practica de intervencion realizada en tercer semestre
#Especificamente me refiero a la asignatura de español

#comenzaré haciendo la nube de palabras para lo que necesitaré
#instalar estos paquetes y sus librerias

install.packages("tm")
library(tm)

install.packages("NPL")
library.(NPL)

install.packages("SnowballC")
library(SnowballC)

install.packages("wordcloud")
library(wordcloud)

install.packages("RcolorBrewer")
library(RColorBrewer)

#Inserto mi reflexion sobre mi practica de intervencion en la asignatura de espanol en formato TXT texto
#Tiene de nombre prlips

texto<-readLines("./prlips.txt")
texto = iconv(texto, to="ASCII//TRANSLIT")
texto = Corpus(VectorSource(texto))

#Limpio mi texto

discurso=tm_map(texto, tolower) #Para poner el texto en minúsculas
discurso=tm_map(discurso, stripWhitespace) #Para quitar los espacios en blanco
discurso=tm_map(discurso, removePunctuation) #Para quitar los signos de puntuación del texto
discurso=tm_map(discurso, removeNumbers) #Para quitar los numeros
stopwords("spanish") #Para quitar palabras vacias y genericas
discurso=tm_map(discurso, removeWords, stopwords("spanish"))

#Realizo una dataframe de las palabras con su frecuencia

#creo mi matriz de letras

letras=TermDocumentMatrix(discurso)
findFreqTerms(letras, lowfreq = 5)
matrix=as.matrix(letras)

#Ordeno y sumo las letras de mi matriz de letras
vector<-sort(rowSums(matrix), decreasing = TRUE)

#Creo la data con las palabras y su frecuencia
dataletras<-data.frame(word=names(vector), frequencia=vector)

#Grafico de la frecuencia de las palabras
barplot(dataletras[1:10,]$freq, las = 2, names.arg = dataletras[1:10,]$word,
        col ="purple", main ="PALABRAS MAS FRECUENTES", ylab = "Frecuencia de palabras")

#Grafica de mi nube de palabras
#Al ser poco el texto elegi de minimo de palabras 35 y maximo 200.

wordcloud(words = dataletras$word, freq = dataletras$freq, min.freq = 35,
          max.words=200)

#Palabras más importantes en el centro y le agrego color
#yo utilice la paleta paired

wordcloud(words = dataletras$word, freq = dataletras$freq, min.freq = 35,
          max.words=200, random.order=FALSE, rot.per=0.2, 
          colors=brewer.pal(8, "Paired"))


#Me apoyé de este video realizar mi nube de palabras: https://youtu.be/tihnYJhZCHs

