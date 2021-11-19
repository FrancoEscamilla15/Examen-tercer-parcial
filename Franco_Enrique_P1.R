#Tercer examen parcial - Enrique Franco García - 259366

library(Biostrings) #Cargue la liberia que voy a ocupar para cargar mi archivo 
globinas <- readAAStringSet("globinas.fasta") #Cargo el archivo con el cual voy a trabajar
globinas #Para visualizarlo 

####Alineamiento####
library(msa) #Cargo la libreria para hacer los alineamientos
g_clustalO <- msa(globinas, method = "ClustalO") #Genere un alineamiento para goblinas por Clustal Omega
g_muscle <- msa(globinas, method = "Muscle") #Genere un alineamiento para goblinas por muscle


g_clustalO1<- msaConvert(g_clustalO, type ="seqinr::alignment") 
g_muscle1<- msaConvert(g_muscle, type = "seqinr::alignment") 
#Converti ambos alineamientos para que posteriormente 
#los pueda hacer matrices de distancia

####Matrices de distancia####
library(seqinr) #Cargo la libreria para hacer las matrices de distancia
#Crear matrices de distancia 
d_g_clustalO <- dist.alignment(g_clustalO1)
d_g_muscle <- dist.alignment(g_muscle1)

View(as.matrix(d_g_clustalO))
View(as.matrix(d_g_muscle))
#Cree las matrices de distancia y a partir de mis alineamientos convertidos 
#y las visualice 

####Arboles filogeneticos####
library(ape) #Cargue la libreria necesaria para hacer el arbol 
g_Tree <- nj(d_g_clustalO) #Cree un objeto que tuviera mi arbol a partir de mi 
#matriz de distancia por el metodo de vecinos cercanos
plot(g_Tree, main="Arbol filogenetico de globina por clustal Omega") 
#Imprimi para visualizar mi arbol filogenetico

g_Tree <- nj(d_g_muscle)
plot(g_Tree, main="Arbol filogenetico de globina por muscle") #Arbol de globinas
