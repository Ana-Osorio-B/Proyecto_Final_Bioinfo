
#anova
library(ape)
library(tidyverse)

ali <- read.dna("\\Users\\pilar\\Downloads\\muscle.fas", format = "fasta")

preci <- read.table("\\Users\\pilar\\Downloads\\meta.txt", header = TRUE, sep = "\t")
altura <- read.table("\\Users\\pilar\\Downloads\\altura.txt", header = TRUE, sep ="\t")

distancias <- dist.dna(ali, model = "K80", pairwise.deletion = TRUE, as.matrix = TRUE)

div_indiv <- rowMeans(distancias)
nombres <- rownames(distancias)

div_data <- data.frame(IND = nombres, DIV = div_indiv)

div_data$IND <- gsub(" ", "", div_data$IND)
preci$IND <- gsub(" ", "", preci$IND)
altura$IND <- gsub(" ", "", altura$IND)

datos_completos <- div_data %>%
  left_join(preci[, c("IND", "NIVEL")], by = "IND") %>%
  left_join(altura[, c("IND", "NIVEL")], by = "IND", suffix = c("_PRECI", "_ALTURA"))

head(datos_completos)

datos_completos <- div_data %>%
  left_join(preci[, c("IND", "NIVEL", "GEN")], by = "IND") %>%
  left_join(altura[, c("IND", "NIVEL")], by = "IND", suffix = c("_PRECI", "_ALTURA"))

datos_completos$NIVEL_PRECI <- as.factor(datos_completos$NIVEL_PRECI)
datos_completos$NIVEL_ALTURA <- as.factor(datos_completos$NIVEL_ALTURA)
datos_completos$GEN <- as.factor(datos_completos$GEN)

# ANOVA 
anova_dos_vias <- aov(DIV ~ NIVEL_PRECI * NIVEL_ALTURA, data = datos_completos)
summary(anova_dos_vias)

#grafica

library(ggplot2)
library(dplyr)
library(tidyr)

datos_long <- datos_completos %>%
  select(IND, DIV, NIVEL_PRECI, NIVEL_ALTURA) %>%
  pivot_longer(cols = c(NIVEL_PRECI, NIVEL_ALTURA),
               names_to = "VARIABLE", values_to = "NIVEL")

datos_long$VARIABLE <- recode(datos_long$VARIABLE,
                              "NIVEL_PRECI" = "PRECIPITACION",
                              "NIVEL_ALTURA" = "ALTITUD")

colores_var <- c("PRECIPITACION" = "palevioletred1",
                 "ALTITUD" = "#CD661D") 

                 
ggplot(datos_long, aes(x = NIVEL, y = DIV, fill = VARIABLE)) +
  geom_boxplot(alpha = 0.9, position = position_dodge(width = 0.75)) +
  facet_wrap(~VARIABLE, scales = "free_x", strip.position = "bottom") +
  scale_fill_manual(values = colores_var) +
  labs(x = "VARIABLE AMBIENTAL",
       y = "DIVERSIDAD GENÉTICA",
       fill = "VARIABLE AMBIENTAL") +
  theme_minimal(base_size = 14) +
  theme(
    strip.background = element_blank(),
    strip.placement = "outside",
    panel.spacing = unit(0.1, "lines"),
    axis.text.x = element_text(angle = 30, hjust = 1),
    legend.position = "top"
  )



