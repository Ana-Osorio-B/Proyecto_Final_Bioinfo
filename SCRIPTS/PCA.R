#PCA de Precipitación y Altura combinados
library(adegenet)
library(ggplot2)
library(stringr)


snp <- fasta2genlight('muscle.fas', snpOnly=T)#Extraer SNPs
meta <- read.table('meta.txt', sep='\t', header = T)

snp$pop = as.factor(meta[match(snp$ind.names, meta$IND),]$IND)#Asignar los nombres y poblaciones a los SNPs
pca <- glPca(snp, nf=10)
Porcentaje <- 100 * pca$eig / sum(pca$eig)
Porcentaje #Calculo de varianza explicada

#Cambio de nombres en columnas
meta$NIVEL1 <- str_replace_all(string = meta$NIVEL1,
                               c("POCA" = "PRECIPITACION POCA",
                                 "MEDIA" = "PRECIPITACION MEDIA",
                                 "ALTA" = "PRECIPITACION ALTA"))
meta$NIVEL2 <- str_replace_all(string = meta$NIVEL2,
                               c("POCA" = "POCA ELEVACION",
                                 "ALTA" = "ALTO ELEVACION"))
#creación columna combinada (ambas variables ambientales)
meta2 <- meta %>%
  unite(col = "NIVELES", NIVEL1, NIVEL2, sep = " y ")


pca.dataset = as.data.frame(pca$scores)#
pca.dataset$isolates = rownames(pca.dataset)#
pca.dataset$pop = as.factor(meta2$POB[match(snp$ind.names, meta2$IND)])
pca.dataset$`VARIABLE AMBIENTAL` = as.factor(meta2$NIVELES[match(snp$ind.names, meta2$IND)])#


ggplot(pca.dataset, aes(PC1, PC2, fill=`VARIABLE AMBIENTAL`)) + geom_point(shape=21, size=4, alpha=0.7)+
  scale_fill_manual(values = c("#8B475D","palevioletred1","#CD661D","#EEE5DE"))+theme_light()+xlab("PC1 (25.5%)")+ylab("PC2 (15%)")
