#!/bin/bash

echo "Cortex"
sed -e "s|XXXXX|../Data/Cortex/Data.csv|g" Templates/Sklearn_randomized_svd_Template > TMP_Sklearn_randomized_svd_Cortex.sh
mkdir -p ../Data/Cortex/Sklearn_randomized_svd
sed -e "s|YYYYY|../Data/Cortex/Sklearn_randomized_svd|g" TMP_Sklearn_randomized_svd_Cortex.sh > Sklearn_randomized_svd_Cortex.sh
sed -e "s|ZZZZZ|log/Cortex_Sklearn_randomized_svd.out|g" Sklearn_randomized_svd_Cortex.sh > TMP_Sklearn_randomized_svd_Cortex.sh
sed -e "s|SSSSS|10|g" TMP_Sklearn_randomized_svd_Cortex.sh > Sklearn_randomized_svd_Cortex.sh
qsub Sklearn_randomized_svd_Cortex.sh
rm *Sklearn_randomized_svd_Cortex.sh

echo "Pancreas"
sed -e "s|XXXXX|../Data/Pancreas/Data.csv|g" Templates/Sklearn_randomized_svd_Template > TMP_Sklearn_randomized_svd_Pancreas.sh
mkdir -p ../Data/Pancreas/Sklearn_randomized_svd
sed -e "s|YYYYY|../Data/Pancreas/Sklearn_randomized_svd|g" TMP_Sklearn_randomized_svd_Pancreas.sh > Sklearn_randomized_svd_Pancreas.sh
sed -e "s|ZZZZZ|log/Pancreas_Sklearn_randomized_svd.out|g" Sklearn_randomized_svd_Pancreas.sh > TMP_Sklearn_randomized_svd_Pancreas.sh
sed -e "s|SSSSS|12|g" TMP_Sklearn_randomized_svd_Pancreas.sh > Sklearn_randomized_svd_Pancreas.sh
qsub Sklearn_randomized_svd_Pancreas.sh
rm *Sklearn_randomized_svd_Pancreas.sh
