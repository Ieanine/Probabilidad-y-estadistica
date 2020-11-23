#TAREA: 24/NOVIEMBRE/2020


#generar numero aleatorios para una muestra de 35 personas en una 
#poblacion de 73 alumnas/os del 5to semestre de la LEP BENV

sample(x, side, replace=True/FALSE)

#Ejemplo
sample(1:73,35, replace = FALSE)
sample(1:70,34, replace=FALSE)


#Ejercicios

#1.1- Calcula el tamaño de muestra para una poblacion de 
#83 alumnas y alumnos que se encuentran en primer grado
#de la Licenciatura en Educacion Primaria de la BENV.

sample(1:83,39, replace = FALSE)

#1.2.- Una vez que obtengas el tamaÑo de la muestra, 
#selecciona el nUmero de lista de las personas que formaran
#parte de la muestra.

#1.3.- Crea un vector llamado muestra con los nÃºmeros de 
#lista de las personas que forman parte de la muestra.

muestra<-c(29, 44, 12, 50, 69, 62, 49, 20, 58, 59, 73, 23, 65, 11, 64, 78, 13, 43, 56, 33, 19, 71, 63, 26, 10, 17, 18,
           8, 42, 35, 52, 31, 5, 57, 66, 9, 54, 3, 38)

#2.- Repite el ejercicio anterior ahora para una poblacion
# de 90 alumnas y alumnos de integran el segundo año de la
#licenciatura en Educacion Primaria de la BENV.


sample(1:90,42, replace = FALSE)

muestra1<-c(63, 28, 71, 85, 40, 65, 79, 39, 15, 64, 56, 24, 20, 29, 86, 6, 7, 78, 18, 37, 30, 80, 35, 12, 76, 70, 42,
            10, 36, 68, 34, 66, 69, 82, 26, 8, 49, 54, 45, 44, 43, 75)

#3.- Determina el numero e identifica a las personas que participaran
#en un estudio de seguimiento de egresados de la generacion
#2015-2019 de las 5 licenciaturas de la BENV.

#Primaria: 78 personas egresadas.
#Preescolar: 84 personas egresadas.
#Fisica: 35 personas egresadas.
#Telesecundaria: 83 personas egresadas.
#Especial: 25 personas.

#N: Tamaño de población: 305 Personas egresadas.

#Lic educacion primaria
sample(1:78,36, replace = FALSE)
#personas que participaran: 8, 22, 39, 55, 65, 17, 36, 62, 19, 44, 58, 21, 14, 5, 26, 9, 31, 78, 46, 49, 57, 60, 38, 66, 67, 27, 34, 32, 70, 53, 75, 51, 41, 15, 74, 42

#Lic educacion preescolar
sample(1:84,38, replace = FALSE)
#personas que participaran: 27, 13, 61, 2, 35, 64, 40, 14, 76, 10, 31, 29, 3, 59, 44, 9, 6, 37, 63, 7, 53, 71, 54, 18, 84, 39, 62, 22, 47, 73, 36, 1, 83, 57, 69, 23, 15, 70

#Lic educacion fisica
sample(1:35,18, replace = FALSE)
#personas que participaran: 16, 8, 5, 25, 29, 18, 2, 28, 20, 22, 12, 19, 30, 24, 14, 13,  3, 32

#Lic educacion telesecundaria
sample(1:83,21, replace = FALSE)
#personas que participaran: 42, 50, 12, 77, 4, 80, 29, 13, 16, 1, 64, 27, 71, 53, 9, 63, 17, 61, 83, 47, 40, 32, 70, 53, 75, 51, 41, 15, 74, 42,

#Lic educacion especial
sample(1:35,13, replace = FALSE)
#personas que participaran: 24, 15, 17, 1, 18, 21, 34, 10, 11, 23, 28, 26, 29