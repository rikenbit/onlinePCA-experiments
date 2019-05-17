#!/bin/bash

echo "Cortex"
sed -e "s|XXXXX|../Data/Cortex/refData.csv|g" Templates/RefSVD_Template > TMP_RefSVD_Cortex.sh
sed -e "s|YYYYY|../Data/Cortex|g" TMP_RefSVD_Cortex.sh > RefSVD_Cortex.sh
sed -e "s|ZZZZZ|log/Cortex_RefSVD.out|g" RefSVD_Cortex.sh > TMP_RefSVD_Cortex.sh
sed -e "s|SSSSS|10|g" TMP_RefSVD_Cortex.sh > RefSVD_Cortex.sh
qsub RefSVD_Cortex.sh
rm -rf *RefSVD_Cortex.sh

echo "Pancreas"
sed -e "s|XXXXX|../Data/Pancreas/refData.csv|g" Templates/RefSVD_Template > TMP_RefSVD_Pancreas.sh
sed -e "s|YYYYY|../Data/Pancreas|g" TMP_RefSVD_Pancreas.sh > RefSVD_Pancreas.sh
sed -e "s|ZZZZZ|log/Pancreas_RefSVD.out|g" RefSVD_Pancreas.sh > TMP_RefSVD_Pancreas.sh
sed -e "s|SSSSS|12|g" TMP_RefSVD_Pancreas.sh > RefSVD_Pancreas.sh
qsub RefSVD_Pancreas.sh
rm -rf *RefSVD_Pancreas.sh

echo "Brain"
sed -e "s|XXXXX|../Data/Brain/ref1M_neurons_filtered_gene_bc_matrices_h5.csv|g" Templates/RefSVD_Template > TMP_RefSVD_Brain.sh
sed -e "s|YYYYY|../Data/Brain|g" TMP_RefSVD_Brain.sh > RefSVD_Brain.sh
sed -e "s|ZZZZZ|log/Brain_RefSVD.out|g" RefSVD_Brain.sh > TMP_RefSVD_Brain.sh
sed -e "s|SSSSS|20|g" TMP_RefSVD_Brain.sh > RefSVD_Brain.sh
qsub RefSVD_Brain.sh
rm -rf *RefSVD_Brain.sh
