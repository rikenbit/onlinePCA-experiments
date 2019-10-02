#!/bin/bash

echo "PBMCs"
sed -e "s|XXXXX|../Data/PBMCs/Data.csv|g" Templates/Sklearn_randomized_svd_Template > TMP_Sklearn_randomized_svd_PBMCs.sh
mkdir -p ../Data/PBMCs/Sklearn_randomized_svd
sed -e "s|YYYYY|../Data/PBMCs/Sklearn_randomized_svd|g" TMP_Sklearn_randomized_svd_PBMCs.sh > Sklearn_randomized_svd_PBMCs.sh
sed -e "s|ZZZZZ|log/PBMCs_Sklearn_randomized_svd.out|g" Sklearn_randomized_svd_PBMCs.sh > TMP_Sklearn_randomized_svd_PBMCs.sh
sed -e "s|SSSSS|3|g" TMP_Sklearn_randomized_svd_PBMCs.sh > Sklearn_randomized_svd_PBMCs.sh
qsub Sklearn_randomized_svd_PBMCs.sh
rm *Sklearn_randomized_svd_PBMCs.sh

echo "Pancreas"
sed -e "s|XXXXX|../Data/Pancreas/Data.csv|g" Templates/Sklearn_randomized_svd_Template > TMP_Sklearn_randomized_svd_Pancreas.sh
mkdir -p ../Data/Pancreas/Sklearn_randomized_svd
sed -e "s|YYYYY|../Data/Pancreas/Sklearn_randomized_svd|g" TMP_Sklearn_randomized_svd_Pancreas.sh > Sklearn_randomized_svd_Pancreas.sh
sed -e "s|ZZZZZ|log/Pancreas_Sklearn_randomized_svd.out|g" Sklearn_randomized_svd_Pancreas.sh > TMP_Sklearn_randomized_svd_Pancreas.sh
sed -e "s|SSSSS|12|g" TMP_Sklearn_randomized_svd_Pancreas.sh > Sklearn_randomized_svd_Pancreas.sh
qsub Sklearn_randomized_svd_Pancreas.sh
rm *Sklearn_randomized_svd_Pancreas.sh
