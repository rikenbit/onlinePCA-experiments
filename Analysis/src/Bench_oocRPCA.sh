#!/bin/bash

echo "Cortex"
sed -e "s|XXXXX|../Data/Cortex/Data.csv|g" Templates/oocRPCA_Template > TMP_oocRPCA_Cortex.sh
mkdir -p ../Data/Cortex/oocRPCA
sed -e "s|YYYYY|../Data/Cortex/oocRPCA|g" TMP_oocRPCA_Cortex.sh > oocRPCA_Cortex.sh
sed -e "s|ZZZZZ|log/Cortex_oocRPCA.out|g" oocRPCA_Cortex.sh > TMP_oocRPCA_Cortex.sh
sed -e "s|SSSSS|10|g" TMP_oocRPCA_Cortex.sh > oocRPCA_Cortex.sh
sed -e "s|TTTTT|21614|g" oocRPCA_Cortex.sh > TMP_oocRPCA_Cortex.sh
sed -e "s|UUUUU|1679|g" TMP_oocRPCA_Cortex.sh > oocRPCA_Cortex.sh
qsub oocRPCA_Cortex.sh
rm oocRPCA_Cortex.sh

echo "Pancreas"
sed -e "s|XXXXX|../Data/Pancreas/Data.csv|g" Templates/oocRPCA_Template > TMP_oocRPCA_Pancreas.sh
mkdir -p ../Data/Pancreas/oocRPCA
sed -e "s|YYYYY|../Data/Pancreas/oocRPCA|g" TMP_oocRPCA_Pancreas.sh > oocRPCA_Pancreas.sh
sed -e "s|ZZZZZ|log/Pancreas_oocRPCA.out|g" oocRPCA_Pancreas.sh > TMP_oocRPCA_Pancreas.sh
sed -e "s|SSSSS|12|g" TMP_oocRPCA_Pancreas.sh > oocRPCA_Pancreas.sh
sed -e "s|TTTTT|17499|g" oocRPCA_Pancreas.sh > TMP_oocRPCA_Pancreas.sh
sed -e "s|UUUUU|8569|g" TMP_oocRPCA_Pancreas.sh > oocRPCA_Pancreas.sh
qsub oocRPCA_Pancreas.sh
rm oocRPCA_Pancreas.sh

echo "Brain"
sed -e "s|XXXXX|../Data/Brain/1M_neurons_filtered_gene_bc_matrices_h5.csv|g" Templates/oocRPCA_Template > TMP_oocRPCA_Brain.sh
mkdir -p ../Data/Brain/oocRPCA
sed -e "s|YYYYY|../Data/Brain/oocRPCA|g" TMP_oocRPCA_Brain.sh > oocRPCA_Brain.sh
sed -e "s|ZZZZZ|log/Brain_oocRPCA.out|g" oocRPCA_Brain.sh > TMP_oocRPCA_Brain.sh
sed -e "s|SSSSS|25|g" TMP_oocRPCA_Brain.sh > oocRPCA_Brain.sh
sed -e "s|TTTTT|23771|g" oocRPCA_Brain.sh > TMP_oocRPCA_Brain.sh
sed -e "s|UUUUU|1306127|g" TMP_oocRPCA_Brain.sh > oocRPCA_Brain.sh
qsub oocRPCA_Brain.sh
rm oocRPCA_Brain.sh
