#!/bin/bash

echo "PBMCs"
sed -e "s|XXXXX|../Data/PBMCs/Data.csv|g" Templates/Sklearn_RandomizedPCA_Template > TMP_Sklearn_RandomizedPCA_PBMCs.sh
mkdir -p ../Data/PBMCs/Sklearn_RandomizedPCA
sed -e "s|YYYYY|../Data/PBMCs/Sklearn_RandomizedPCA|g" TMP_Sklearn_RandomizedPCA_PBMCs.sh > Sklearn_RandomizedPCA_PBMCs.sh
sed -e "s|ZZZZZ|log/PBMCs_Sklearn_RandomizedPCA.out|g" Sklearn_RandomizedPCA_PBMCs.sh > TMP_Sklearn_RandomizedPCA_PBMCs.sh
sed -e "s|SSSSS|3|g" TMP_Sklearn_RandomizedPCA_PBMCs.sh > Sklearn_RandomizedPCA_PBMCs.sh
qsub Sklearn_RandomizedPCA_PBMCs.sh
rm Sklearn_RandomizedPCA_PBMCs.sh

echo "Pancreas"
sed -e "s|XXXXX|../Data/Pancreas/Data.csv|g" Templates/Sklearn_RandomizedPCA_Template > TMP_Sklearn_RandomizedPCA_Pancreas.sh
mkdir -p ../Data/Pancreas/Sklearn_RandomizedPCA
sed -e "s|YYYYY|../Data/Pancreas/Sklearn_RandomizedPCA|g" TMP_Sklearn_RandomizedPCA_Pancreas.sh > Sklearn_RandomizedPCA_Pancreas.sh
sed -e "s|ZZZZZ|log/Pancreas_Sklearn_RandomizedPCA.out|g" Sklearn_RandomizedPCA_Pancreas.sh > TMP_Sklearn_RandomizedPCA_Pancreas.sh
sed -e "s|SSSSS|12|g" TMP_Sklearn_RandomizedPCA_Pancreas.sh > Sklearn_RandomizedPCA_Pancreas.sh
qsub Sklearn_RandomizedPCA_Pancreas.sh
rm Sklearn_RandomizedPCA_Pancreas.sh
