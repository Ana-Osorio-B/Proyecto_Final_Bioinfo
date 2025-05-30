# Relación de la diversidad genética en el gen mitocondrial co1 en abejas de la tribu euglossini con determinados factores ambientales 
Sofia C. Chaves* - Ana S. Osorio*

Facultad de Ciencias Naturales, Universidad del Rosario, Carrera 24 # 63C-69, Bogotá D.C., Colombia 

*Email: sofia.chaves@urosario.edu.co ; anas.osorio@urosario.edu.co

### DATOS Y SCRIPTS
Los datos usados en el proyecto estan disponibles es la carpeta [DATOS](https://github.com/Ana-Osorio-B/Proyecto_Final_Bioinfo/blob/58b5cc755486faf3261f70f77ec88cae55e4b1dc/DATOS)

Los scripts para la obtención de resultados son los siguientes:
1. Concatenación de secuencias según la población [aquí](https://github.com/Ana-Osorio-B/Proyecto_Final_Bioinfo/blob/58b5cc755486faf3261f70f77ec88cae55e4b1dc/SCRIPTS/Poblaciones.sh)
2. Alineamiento en muscle [aquí](https://github.com/Ana-Osorio-B/Proyecto_Final_Bioinfo/blob/58b5cc755486faf3261f70f77ec88cae55e4b1dc/SCRIPTS/alineamiento.txt)
3. Determinación de AMOVA y FST [aquí](https://github.com/Ana-Osorio-B/Proyecto_Final_Bioinfo/blob/58b5cc755486faf3261f70f77ec88cae55e4b1dc/SCRIPTS/AMOVA-FST.R)
4. Creación de modelo lineal [aquí](https://github.com/Ana-Osorio-B/Proyecto_Final_Bioinfo/blob/7fdbb7da1fc097951d3a6e481512949df8431c38/SCRIPTS/Modelo_lineal.R)
6. Prueba ANOVA [aquí](https://github.com/Ana-Osorio-B/Proyecto_Final_Bioinfo/blob/743135668d7d83e77c4bbf8a61d5f33a24c8025e/SCRIPTS/ANOVA.R)
7. Determinación de PCA [aquí](https://github.com/Ana-Osorio-B/Proyecto_Final_Bioinfo/blob/7fdbb7da1fc097951d3a6e481512949df8431c38/SCRIPTS/PCA.R)

### RESULTADOS

**Tabla 1.** Índices de diversidad genética del gen mitocondrial CO1 de seis poblaciones de la tribu Euglosinii. Se muestran los valores de diversidad nucleotídica (π), diversidad de haplotipos (*h*) y promedio de diferencia nucleótidas (*k*).  
*Población*|*π*|*h*|*k*
-------|-----------|-------|-----------
Bolivia (BO)|0.081|0.964|44.178
Costa Rica (CR)|0.064|0.933|34.866
Ecuador costa (EC)|0.065|1|33.238
Ecuador amazonas (EA)|0.068|0.981|30.914
Guiana Francesa (GF)|0.079|0.988|35.461
Panamá (PA)|0.078|0.969|34.113

**Tabla 2.** Resultados del análisis de variación molecular (AMOVA), donde se agrupó a los 81 individuos de acuerdo con su ubicación geográfica o población. La prueba obtuvo un P >0.05. 

*Fuente de Variación*|*Grados de libertad*|*Suma de cuadrados*|*Media de cuadrados*|*Porcentaje de variación*
-------|-----------|-------|-----------|-----------
Entre poblaciones|5|159.7|31.9|-0.8 
Dentro de las poblaciones|75|2692.7|35.9|100.8 
Total|80|2852.5|35.6|100 


![ANOVA](https://github.com/Ana-Osorio-B/Proyecto_Final_Bioinfo/blob/main/grafica_anova.png)

**Figura 2.** Distribución de la diversidad nucleotídica de la prueba ANOVA en relación con tres niveles de precipitación (alta, media y poca) y dos niveles de altura (alta y baja). Valores P > 0.05. 


![PCA](https://github.com/Ana-Osorio-B/Proyecto_Final_Bioinfo/blob/743135668d7d83e77c4bbf8a61d5f33a24c8025e/PCA.png)

**Figura 3.** Análisis de componentes principales de los individuos de la tribu Euglosinii. La agrupación se lleva a cabo respecto a precipitación (mm) y elevación (msnm) registrada en las poblaciones. Se explica un total de 40.5% de la variación, dividido en dos componentes.  


