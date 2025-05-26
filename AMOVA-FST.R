#De no tener los paquetes usar install.packages()
library("apex")
library("adegenet")
library("pegas")
library("mmod")
library("poppr")
library("hierfstat")

#Directorio de trabajo
setwd("C:/Users/anaso/Documents/Bioinformatica/Proyecto_final/")

#Fasta y poblaciones
Datos<- read.FASTA("muscle.fasta")
#Crear genind
Datos.gid <- DNAbin2genind(Datos)
Datos.gid
#Importar archivo con poblaciones y asignarlo al objeto genind
Pop <- read.delim("Pop.txt",header=F,stringsAsFactors=T)
strata(Datos.gid)<-Pop
setPop(Datos.gid) <- ~V2 #Nombre de la columna con las poblaciones
Datos.gid

#AMOVA
amova<-poppr.amova(Datos.gid, hier=~V2,nperm = 999,within=FALSE)
amova
randtest(amova, nrepet = 999) #Calcula el valor de P


#FST
wc(Datos.gid[,-2])#Global
Pareado_FST<-genet.dist(Datos.gid, method = "WC84")#Hace lo mismo que la anterior
Pareado_FST
