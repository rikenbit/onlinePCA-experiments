#!/bin/bash

echo "PBMCs"
sed -e "s|XXXXX|../Data/PBMCs/refData.csv|g" Templates/RefSVD_Template > TMP_RefSVD_PBMCs.sh
sed -e "s|YYYYY|../Data/PBMCs|g" TMP_RefSVD_PBMCs.sh > RefSVD_PBMCs.sh
sed -e "s|ZZZZZ|log/PBMCs_RefSVD.out|g" RefSVD_PBMCs.sh > TMP_RefSVD_PBMCs.sh
sed -e "s|SSSSS|3|g" TMP_RefSVD_PBMCs.sh > RefSVD_PBMCs.sh
qsub RefSVD_PBMCs.sh
rm -rf *RefSVD_PBMCs.sh

echo "Pancreas"
sed -e "s|XXXXX|../Data/Pancreas/refData.csv|g" Templates/RefSVD_Template > TMP_RefSVD_Pancreas.sh
sed -e "s|YYYYY|../Data/Pancreas|g" TMP_RefSVD_Pancreas.sh > RefSVD_Pancreas.sh
sed -e "s|ZZZZZ|log/Pancreas_RefSVD.out|g" RefSVD_Pancreas.sh > TMP_RefSVD_Pancreas.sh
sed -e "s|SSSSS|12|g" TMP_RefSVD_Pancreas.sh > RefSVD_Pancreas.sh
qsub RefSVD_Pancreas.sh
rm -rf *RefSVD_Pancreas.sh

echo "BrainSpinalCord"
sed -e "s|XXXXX|../Data/BrainSpinalCord/refData.csv|g" Templates/RefSVD_Template > TMP_RefSVD_BrainSpinalCord.sh
sed -e "s|YYYYY|../Data/BrainSpinalCord|g" TMP_RefSVD_BrainSpinalCord.sh > RefSVD_BrainSpinalCord.sh
sed -e "s|ZZZZZ|log/BrainSpinalCord_RefSVD.out|g" RefSVD_BrainSpinalCord.sh > TMP_RefSVD_BrainSpinalCord.sh
sed -e "s|SSSSS|16|g" TMP_RefSVD_BrainSpinalCord.sh > RefSVD_BrainSpinalCord.sh
qsub RefSVD_BrainSpinalCord.sh
rm -rf *RefSVD_BrainSpinalCord.sh

echo "Brain"
sed -e "s|XXXXX|../Data/Brain/ref1M_neurons_filtered_gene_bc_matrices_h5.csv|g" Templates/RefSVD_Template > TMP_RefSVD_Brain.sh
sed -e "s|YYYYY|../Data/Brain|g" TMP_RefSVD_Brain.sh > RefSVD_Brain.sh
sed -e "s|ZZZZZ|log/Brain_RefSVD.out|g" RefSVD_Brain.sh > TMP_RefSVD_Brain.sh
sed -e "s|SSSSS|20|g" TMP_RefSVD_Brain.sh > RefSVD_Brain.sh
qsub RefSVD_Brain.sh
rm -rf *RefSVD_Brain.sh
