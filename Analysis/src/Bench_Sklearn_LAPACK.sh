#!/bin/bash

echo "Cortex"
sed -e "s|XXXXX|../Data/Cortex/Data.csv|g" Templates/Sklearn_LAPACK_Template > TMP_Sklearn_LAPACK_Cortex.sh
mkdir -p ../Data/Cortex/Sklearn_LAPACK
sed -e "s|YYYYY|../Data/Cortex/Sklearn_LAPACK|g" TMP_Sklearn_LAPACK_Cortex.sh > Sklearn_LAPACK_Cortex.sh
sed -e "s|ZZZZZ|log/Cortex_Sklearn_LAPACK.out|g" Sklearn_LAPACK_Cortex.sh > TMP_Sklearn_LAPACK_Cortex.sh
sed -e "s|SSSSS|10|g" TMP_Sklearn_LAPACK_Cortex.sh > Sklearn_LAPACK_Cortex.sh
qsub Sklearn_LAPACK_Cortex.sh
rm Sklearn_LAPACK_Cortex.sh

echo "Pancreas"
sed -e "s|XXXXX|../Data/Pancreas/Data.csv|g" Templates/Sklearn_LAPACK_Template > TMP_Sklearn_LAPACK_Pancreas.sh
mkdir -p ../Data/Pancreas/Sklearn_LAPACK
sed -e "s|YYYYY|../Data/Pancreas/Sklearn_LAPACK|g" TMP_Sklearn_LAPACK_Pancreas.sh > Sklearn_LAPACK_Pancreas.sh
sed -e "s|ZZZZZ|log/Pancreas_Sklearn_LAPACK.out|g" Sklearn_LAPACK_Pancreas.sh > TMP_Sklearn_LAPACK_Pancreas.sh
sed -e "s|SSSSS|12|g" TMP_Sklearn_LAPACK_Pancreas.sh > Sklearn_LAPACK_Pancreas.sh
qsub Sklearn_LAPACK_Pancreas.sh
rm Sklearn_LAPACK_Pancreas.sh
