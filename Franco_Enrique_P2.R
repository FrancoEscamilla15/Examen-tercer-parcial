#Rosalind
library(Biostrings)
ajolote <- readAAStringSet("Ambystoma_mexicanum.txt") #Cargue una secuencia de aminoacidos 
ajolote
alphabetFrequency(ajolote) #Visualice la frecuencia de amioacidos para después usarla en una función

aminoacidos <- function(){
  A <- readline(prompt = "¿Cuantas A tiene tu secucencia: ")
  A <- as.numeric(A)
  C <- readline(prompt = "¿Cuantas C tiene tu secucencia: ")
  C <- as.numeric(C)
  D <- readline(prompt = "¿Cuantas D tiene tu secucencia: ")
  D <- as.numeric(D)
  E <- readline(prompt = "¿Cuantas E tiene tu secucencia: ")
  E <- as.numeric(E)
  F <- readline(prompt = "¿Cuantas F tiene tu secuencia: ")
  F <- as.numeric(F)
  G <- readline(prompt = "¿Cuantas G tiene tu secuencia: ")
  G <- as.numeric(G)
  H <- readline(prompt = "¿Cuantas H tiene tu secuencia: ")
  H <- as.numeric(H)
  I <- readline(prompt = "¿Cuantas I tiene tu secuencia: ")
  I <- as.numeric(I)
  K <- readline(prompt = "¿Cuantas K tiene tu secuencia: ")
  K <- as.numeric(K)
  L <- readline(prompt = "¿Cuantas L tiene tu secuencia: ")
  L <- as.numeric(L)
  M <- readline(prompt = "¿Cuantas M tiene tu secuencia: ")
  M <- as.numeric(M)
  N <- readline(prompt = "¿Cuantas N tiene tu secuencia: ")
  N <- as.numeric(N)
  P <- readline(prompt = "¿Cuantas P tiene tu secuencia: ")
  P <- as.numeric(P)
  Q <- readline(prompt = "¿Cuantas Q tiene tu secuencia: ")
  Q <- as.numeric(Q)
  R <- readline(prompt = "¿Cuantas R tiene tu secuencia: ")
  R <- as.numeric(R)
  S <- readline(prompt = "¿Cuantas S tiene tu secuencia: ")
  S <- as.numeric(S)
  T <- readline(prompt = "¿Cuantas T tiene tu secuencia: ")
  T <- as.numeric(T)
  V <- readline(prompt = "¿Cuantas V tiene tu secuencia: ")
  V <- as.numeric(V)
  W <- readline(prompt = "¿Cuantas W tiene tu secuencia: ")
  W <- as.numeric(W)
  Y <- readline(prompt = "¿Cuantas Y tiene tu secuencia: ")
  Y <- as.numeric(Y)
  aminoacido1 <- A * 71.03711
  aminoacido2 <- C * 103.00919
  aminoacido3 <- D * 115.02694
  aminoacido4 <- E * 129.04259
  aminoacido5 <- F * 147.06841
  aminoacido6 <- G * 57.02146
  aminoacido7 <- H * 137.05891
  aminoacido8 <- I * 113.08406
  aminoacido9 <- K * 128.09496
  aminoacido10 <- L * 113.08406
  aminoacido11 <- M * 131.04049
  aminoacido12 <- N * 114.04293
  aminoacido13 <- P * 97.05276
  aminoacido14 <- Q * 128.05858
  aminoacido15 <- R * 156.10111
  aminoacido16 <- S * 87.03203
  aminoacido17 <- T * 101.04768
  aminoacido18 <- V * 99.06841
  aminoacido19 <- W * 186.07931
  aminoacido20 <- Y * 163.06333 
  sum <- aminoacido1 + aminoacido2 + aminoacido3 + aminoacido4 +
    aminoacido5 + aminoacido6 + aminoacido7 + aminoacido8 + aminoacido9 +
    aminoacido10 + aminoacido11 + aminoacido12 + aminoacido13 + 
    aminoacido14 + aminoacido15 + aminoacido16 + aminoacido17 +
    aminoacido18 + aminoacido19 + aminoacido20
  print(return(print(paste("La suma total es de: ", sum)))) 
}
#Cree una funcion que lo que hace es preguntarte la cantidad de aminoacidos que 
#tienen tu secuencia, esto se puede conocer facilmente usando la funcion "alphabetFrecuency"
#la función ya tiene el valor de cada aminoácido por lo cual al momento de que el 
#usuario ingrese su cantidad de A (por ejemplo) automaticamente la función lo multiplicara por
#71.03711 que es su valor, al final la función sumara el resultado obtenido de cada calculo 
#de aminoacidos de manera que se obtendrá el tamaño total de la secuencia como lo solicita el 
#ejercicio