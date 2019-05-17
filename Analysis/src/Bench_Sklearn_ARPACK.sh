#!/bin/bash

echo "Cortex"
sed -e "s|XXXXX|../Data/Cortex/Data.csv|g" Templates/Sklearn_ARPACK_Template > TMP_Sklearn_ARPACK_Cortex.sh
mkdir -p ../Data/Cortex/Sklearn_ARPACK
sed -e "s|YYYYY|../Data/Cortex/Sklearn_ARPACK|g" TMP_Sklearn_ARPACK_Cortex.sh > Sklearn_ARPACK_Cortex.sh
sed -e "s|ZZZZZ|log/Cortex_Sklearn_ARPACK.out|g" Sklearn_ARPACK_Cortex.sh > TMP_Sklearn_ARPACK_Cortex.sh
sed -e "s|SSSSS|10|g" TMP_Sklearn_ARPACK_Cortex.sh > Sklearn_ARPACK_Cortex.sh
qsub Sklearn_ARPACK_Cortex.sh
rm Sklearn_ARPACK_Cortex.sh

echo "Pancreas"
sed -e "s|XXXXX|../Data/Pancreas/Data.csv|g" Templates/Sklearn_ARPACK_Template > TMP_Sklearn_ARPACK_Pancreas.sh
mkdir -p ../Data/Pancreas/Sklearn_ARPACK
sed -e "s|YYYYY|../Data/Pancreas/Sklearn_ARPACK|g" TMP_Sklearn_ARPACK_Pancreas.sh > Sklearn_ARPACK_Pancreas.sh
sed -e "s|ZZZZZ|log/Pancreas_Sklearn_ARPACK.out|g" Sklearn_ARPACK_Pancreas.sh > TMP_Sklearn_ARPACK_Pancreas.sh
sed -e "s|SSSSS|12|g" TMP_Sklearn_ARPACK_Pancreas.sh > Sklearn_ARPACK_Pancreas.sh
qsub Sklearn_ARPACK_Pancreas.sh
rm Sklearn_ARPACK_Pancreas.sh
