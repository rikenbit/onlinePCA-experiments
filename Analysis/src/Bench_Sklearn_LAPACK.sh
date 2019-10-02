#!/bin/bash

echo "PBMCs"
sed -e "s|XXXXX|../Data/PBMCs/Data.csv|g" Templates/Sklearn_LAPACK_Template > TMP_Sklearn_LAPACK_PBMCs.sh
mkdir -p ../Data/PBMCs/Sklearn_LAPACK
sed -e "s|YYYYY|../Data/PBMCs/Sklearn_LAPACK|g" TMP_Sklearn_LAPACK_PBMCs.sh > Sklearn_LAPACK_PBMCs.sh
sed -e "s|ZZZZZ|log/PBMCs_Sklearn_LAPACK.out|g" Sklearn_LAPACK_PBMCs.sh > TMP_Sklearn_LAPACK_PBMCs.sh
sed -e "s|SSSSS|3|g" TMP_Sklearn_LAPACK_PBMCs.sh > Sklearn_LAPACK_PBMCs.sh
qsub Sklearn_LAPACK_PBMCs.sh
rm Sklearn_LAPACK_PBMCs.sh

echo "Pancreas"
sed -e "s|XXXXX|../Data/Pancreas/Data.csv|g" Templates/Sklearn_LAPACK_Template > TMP_Sklearn_LAPACK_Pancreas.sh
mkdir -p ../Data/Pancreas/Sklearn_LAPACK
sed -e "s|YYYYY|../Data/Pancreas/Sklearn_LAPACK|g" TMP_Sklearn_LAPACK_Pancreas.sh > Sklearn_LAPACK_Pancreas.sh
sed -e "s|ZZZZZ|log/Pancreas_Sklearn_LAPACK.out|g" Sklearn_LAPACK_Pancreas.sh > TMP_Sklearn_LAPACK_Pancreas.sh
sed -e "s|SSSSS|12|g" TMP_Sklearn_LAPACK_Pancreas.sh > Sklearn_LAPACK_Pancreas.sh
qsub Sklearn_LAPACK_Pancreas.sh
rm Sklearn_LAPACK_Pancreas.sh
