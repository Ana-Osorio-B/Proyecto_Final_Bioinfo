
#anova
library(ape)
library(tidyverse)

ali <- read.dna("\\Users\\pilar\\Downloads\\muscle.fas", format = "fasta")

preci <- read.table("\\Users\\pilar\\Downloads\\meta.txt", header = TRUE, sep = "\t")

dist_matrix <- dist.dna(ali, model = "raw")  

dist_df <- as.data.frame(as.matrix(dist_matrix))

ind_names <- rownames(dist_df)

mean_diversity <- rowMeans(dist_df)

diversity_df <- data.frame(IND = ind_names, diversity = mean_diversity)

full_data <- merge(preci, diversity_df, by = "IND")

#anova
anova_model <- aov(diversity ~ NIVEL, data = full_data)
summary(anova_model)
#grafica
boxplot(diversity ~ NIVEL, data = full_data,
        col = mycols <- c("#8B475D","palevioletred1","#EEE5DE"),
        ylab = "Diversidad nucleotídica",
        xlab = "Precipitación")


























