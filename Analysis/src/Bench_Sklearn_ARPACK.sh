#!/bin/bash

echo "PBMCs"
sed -e "s|XXXXX|../Data/PBMCs/Data.csv|g" Templates/Sklearn_ARPACK_Template > TMP_Sklearn_ARPACK_PBMCs.sh
mkdir -p ../Data/PBMCs/Sklearn_ARPACK
sed -e "s|YYYYY|../Data/PBMCs/Sklearn_ARPACK|g" TMP_Sklearn_ARPACK_PBMCs.sh > Sklearn_ARPACK_PBMCs.sh
sed -e "s|ZZZZZ|log/PBMCs_Sklearn_ARPACK.out|g" Sklearn_ARPACK_PBMCs.sh > TMP_Sklearn_ARPACK_PBMCs.sh
sed -e "s|SSSSS|3|g" TMP_Sklearn_ARPACK_PBMCs.sh > Sklearn_ARPACK_PBMCs.sh
qsub Sklearn_ARPACK_PBMCs.sh
rm Sklearn_ARPACK_PBMCs.sh

echo "Pancreas"
sed -e "s|XXXXX|../Data/Pancreas/Data.csv|g" Templates/Sklearn_ARPACK_Template > TMP_Sklearn_ARPACK_Pancreas.sh
mkdir -p ../Data/Pancreas/Sklearn_ARPACK
sed -e "s|YYYYY|../Data/Pancreas/Sklearn_ARPACK|g" TMP_Sklearn_ARPACK_Pancreas.sh > Sklearn_ARPACK_Pancreas.sh
sed -e "s|ZZZZZ|log/Pancreas_Sklearn_ARPACK.out|g" Sklearn_ARPACK_Pancreas.sh > TMP_Sklearn_ARPACK_Pancreas.sh
sed -e "s|SSSSS|12|g" TMP_Sklearn_ARPACK_Pancreas.sh > Sklearn_ARPACK_Pancreas.sh
qsub Sklearn_ARPACK_Pancreas.sh
rm Sklearn_ARPACK_Pancreas.sh
