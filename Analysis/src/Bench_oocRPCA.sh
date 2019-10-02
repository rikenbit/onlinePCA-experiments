#!/bin/bash

echo "PBMCs"
sed -e "s|XXXXX|../Data/PBMCs/CPMED.csv|g" Templates/oocRPCA_Template > TMP_oocRPCA_PBMCs.sh
OUT="../Data/PBMCs/oocRPCA"
mkdir -p $OUT
sed -e "s|YYYYY|$OUT|g" TMP_oocRPCA_PBMCs.sh > oocRPCA_PBMCs.sh
sed -e "s|ZZZZZ|log/PBMCs_oocRPCA.out|g" oocRPCA_PBMCs.sh > TMP_oocRPCA_PBMCs.sh
sed -e "s|SSSSS|3|g" TMP_oocRPCA_PBMCs.sh > oocRPCA_PBMCs.sh
sed -e "s|TTTTT|17484|g" oocRPCA_PBMCs.sh > TMP_oocRPCA_PBMCs.sh
sed -e "s|UUUUU|713|g" TMP_oocRPCA_PBMCs.sh > oocRPCA_PBMCs.sh
qsub oocRPCA_PBMCs.sh
rm oocRPCA_PBMCs.sh

echo "Pancreas"
sed -e "s|XXXXX|../Data/Pancreas/CPMED.csv|g" Templates/oocRPCA_Template > TMP_oocRPCA_Pancreas.sh
OUT="../Data/Pancreas/oocRPCA"
mkdir -p $OUT
sed -e "s|YYYYY|$OUT|g" TMP_oocRPCA_Pancreas.sh > oocRPCA_Pancreas.sh
sed -e "s|ZZZZZ|log/Pancreas_oocRPCA.out|g" oocRPCA_Pancreas.sh > TMP_oocRPCA_Pancreas.sh
sed -e "s|SSSSS|12|g" TMP_oocRPCA_Pancreas.sh > oocRPCA_Pancreas.sh
sed -e "s|TTTTT|16669|g" oocRPCA_Pancreas.sh > TMP_oocRPCA_Pancreas.sh
sed -e "s|UUUUU|3605|g" TMP_oocRPCA_Pancreas.sh > oocRPCA_Pancreas.sh
qsub oocRPCA_Pancreas.sh
rm oocRPCA_Pancreas.sh

echo "BrainSpinalCord"
sed -e "s|XXXXX|../Data/BrainSpinalCord/CPMED.csv|g" Templates/oocRPCA_Template > TMP_oocRPCA_BrainSpinalCord.sh
OUT="../Data/BrainSpinalCord/oocRPCA"
mkdir -p $OUT
sed -e "s|YYYYY|$OUT|g" TMP_oocRPCA_BrainSpinalCord.sh > oocRPCA_BrainSpinalCord.sh
sed -e "s|ZZZZZ|log/BrainSpinalCord_oocRPCA.out|g" oocRPCA_BrainSpinalCord.sh > TMP_oocRPCA_BrainSpinalCord.sh
sed -e "s|SSSSS|16|g" TMP_oocRPCA_BrainSpinalCord.sh > oocRPCA_BrainSpinalCord.sh
sed -e "s|TTTTT|25893|g" oocRPCA_BrainSpinalCord.sh > TMP_oocRPCA_BrainSpinalCord.sh
sed -e "s|UUUUU|156049|g" TMP_oocRPCA_BrainSpinalCord.sh > oocRPCA_BrainSpinalCord.sh
qsub oocRPCA_BrainSpinalCord.sh
rm oocRPCA_BrainSpinalCord.sh

echo "Brain"
sed -e "s|XXXXX|../Data/Brain/cpmed_1M_neurons_filtered_gene_bc_matrices_h5.csv|g" Templates/oocRPCA_Template > TMP_oocRPCA_Brain.sh
OUT="../Data/Brain/oocRPCA"
mkdir -p $OUT
sed -e "s|YYYYY|$OUT|g" TMP_oocRPCA_Brain.sh > oocRPCA_Brain.sh
sed -e "s|ZZZZZ|log/Brain_oocRPCA.out|g" oocRPCA_Brain.sh > TMP_oocRPCA_Brain.sh
sed -e "s|SSSSS|20|g" TMP_oocRPCA_Brain.sh > oocRPCA_Brain.sh
sed -e "s|TTTTT|23771|g" oocRPCA_Brain.sh > TMP_oocRPCA_Brain.sh
sed -e "s|UUUUU|1306127|g" TMP_oocRPCA_Brain.sh > oocRPCA_Brain.sh
qsub oocRPCA_Brain.sh
rm oocRPCA_Brain.sh
