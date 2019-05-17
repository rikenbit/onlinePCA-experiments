#!/bin/bash

echo "Cortex"
sed -e "s|XXXXX|../Data/Cortex/Data.csv|g" Templates/Sklearn_RandomizedPCA_Template > TMP_Sklearn_RandomizedPCA_Cortex.sh
mkdir -p ../Data/Cortex/Sklearn_RandomizedPCA
sed -e "s|YYYYY|../Data/Cortex/Sklearn_RandomizedPCA|g" TMP_Sklearn_RandomizedPCA_Cortex.sh > Sklearn_RandomizedPCA_Cortex.sh
sed -e "s|ZZZZZ|log/Cortex_Sklearn_RandomizedPCA.out|g" Sklearn_RandomizedPCA_Cortex.sh > TMP_Sklearn_RandomizedPCA_Cortex.sh
sed -e "s|SSSSS|10|g" TMP_Sklearn_RandomizedPCA_Cortex.sh > Sklearn_RandomizedPCA_Cortex.sh
qsub Sklearn_RandomizedPCA_Cortex.sh
rm Sklearn_RandomizedPCA_Cortex.sh

echo "Pancreas"
sed -e "s|XXXXX|../Data/Pancreas/Data.csv|g" Templates/Sklearn_RandomizedPCA_Template > TMP_Sklearn_RandomizedPCA_Pancreas.sh
mkdir -p ../Data/Pancreas/Sklearn_RandomizedPCA
sed -e "s|YYYYY|../Data/Pancreas/Sklearn_RandomizedPCA|g" TMP_Sklearn_RandomizedPCA_Pancreas.sh > Sklearn_RandomizedPCA_Pancreas.sh
sed -e "s|ZZZZZ|log/Pancreas_Sklearn_RandomizedPCA.out|g" Sklearn_RandomizedPCA_Pancreas.sh > TMP_Sklearn_RandomizedPCA_Pancreas.sh
sed -e "s|SSSSS|12|g" TMP_Sklearn_RandomizedPCA_Pancreas.sh > Sklearn_RandomizedPCA_Pancreas.sh
qsub Sklearn_RandomizedPCA_Pancreas.sh
rm Sklearn_RandomizedPCA_Pancreas.sh
