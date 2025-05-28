#Modelos lineales
library(stats)
library(ggplot2)

#Precipitación
Precipitacion <- read.delim("Precipitacion.txt",header=T,stringsAsFactors=T)
D_Precip <- dist(Precipitacion$PREP)#Distancias euclidianas
Union<-data.frame(Ambiente = as.vector(D_Precip), # Para linearizar las distancias en una base de datos
                Fst_P= as.vector(Pareado_FST))
Union
modelo <- lm(Fst_P ~ Ambiente, data = Union)
summary(modelo)#R de 0.13 y P de 0.18
ggplot(Union,aes(x=Ambiente,y=Fst_P))+
  geom_point(shape=21, size=2)+geom_smooth(method = glm, col="#8B475D")+
  theme_light()+labs(x="PRECIPITACIÓN (mm)",y="FST PAREADO")


#Elevación
Elevacion <- read.delim("Elevacion.txt",header=T,stringsAsFactors=T)
D_Elev <- dist(Elevacion$ELEV)
Union2<-data.frame(Ambiente = as.vector(D_Elev),
                  Fst_P= as.vector(Pareado_FST))
modelo2 <- lm(Fst_P ~ Ambiente, data = Union2)
summary(modelo2)#R de 0.001 y P de 0.88
ggplot(Union2,aes(x=Ambiente,y=Fst_P))+
  geom_point(shape=21, size=2)+geom_smooth(method = glm, col="#CD661D")+
  theme_light()+labs(x="ELEVACIÓN (msnm)",y="FST PAREADO")
