#Agrupación de los individuos según su ubicación geográfica

#PANAMA
cat Eulaema_cingulata_1.fasta Euglossa_allosticta_3.fasta Euglossa_allosticta_4.fasta Eulaema_cingulata_3.fasta Euglossa_ignita_9.fasta Eulaema_nigrita_1.fasta Eulaema_nigrita_2.fasta Euglossa_imperialis_1.fasta Euglossa_imperialis_5.fasta Euglossa_imperialis_6.fasta Eulaema_bombiformis_1.fasta Eulaema_meriana_2.fasta Eufriesea_ornata_1.fasta Eulaema_meriana_5.fasta Eufriesea_pulchra_2.fasta Eufriesea_pulchra_3.fasta Euglossa_cognata_3.fasta Exaerete_frontalis_1.fasta Eugl
ossa_cognata_7.fasta Exaerete_frontalis_3.fasta Euglossa_mixta_1.fastaa Euglossa_mixta_2.fasta Exaerete_smaragdina_1.fasta Exaerete_smaragdina_5.fasta Exaerete_smaragdina_6.fasta Euglossa_ignita_6.fasta > Ind_panama.fasta
#GUYANA FRANCESA
cat Eulaema_cingulata_6.fasta Eulaema_cingulata_7.fasta Eulaema_nigrita_3.fasta Eulaema_nigrita_5.fasta Eulaema_bombiformis_2.fasta Eulaema_meriana_6.fasta Euglossa_cognata_6.fasta Euglossa_cognata_8.fasta Euglossa_ignita_1.fasta Euglossa_imperialis_3.fasta Euglossa_intersecta_3.fasta Eufriesea_ornata_2.fasta Eufriesea_ornata_3.fasta Eufriesea_pulchra_4.fasta Eufriesea_pulchra_5.fasta Exaerete_frontalis_2.fasta Exaerete_frontalis_6.fasta Exaerete_smaragdina_2.fasta Exaerete_smaragdina_3.fasta > Ind_french_guiana.fasta
#ECUADOR COSTA
cat Eulaema_cingulata_2.fasta Euglossa_ignita_8.fasta Eulaema_cingulata_5.fasta Euglossa_imperialis_7.fasta Euglossa_cognata_2.fasta Euglossa_cognata_5.fasta Euglossa_mixta_5.fasta > Ind_ecuador_co.fasta
#ECUADOR AMAZONAS
cat Eulaema_cingulata_4.fasta Euglossa_imperialis_2.fasta Euglossa_allosticta_1.fasta Euglossa_allosticta_2.fasta Euglossa_intersecta_1.fasta Eulaema_meriana_3.fasta Euglossa_cognata_1.fasta Eufriesea_pulchra_1.fasta Exaerete_frontalis_4.fasta Exaerete_frontalis_5.fasta Euglossa_mixta_3.fasta
Euglossa_mixta_4.fasta Exaerete_smaragdina_4.fasta Euglossa_ignita_2.fasta Euglossa_ignita_3.fasta > Ind_ecuador_ama.fasta
#BOLIVIA
cat Eulaema_cingulata_8.fasta Euglossa_imperialis_4.fasta Eulaema_nigrita_4.fasta Eulaema_meriana_4.fasta Euglossa_cognata_4.fasta Euglossa_mixta_6.fasta Exaerete_smaragdina_7.fasta Exaerete_smaragdina_8.fasta > Ind_bolivia.fasta
#COSTA RICA
cat Euglossa_ignita_10.fasta Eulaema_bombiformis_3.fasta Eulaema_meriana_1.fasta Euglossa_allosticta_5.fasta Euglossa_ignita_4.fasta Euglossa_ignita_5.fasta > Ind_costa_rica.fasta
#REVISIÓN 
grep -E '>' Ind_* | wc -l
