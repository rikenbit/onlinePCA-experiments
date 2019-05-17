#!/bin/bash

echo "Cortex"
sed -e "s|XXXXX|../Data/Cortex/Data.csv|g" Templates/prcomp_Template > TMP_prcomp_Cortex.sh
mkdir -p ../Data/Cortex/prcomp
sed -e "s|YYYYY|../Data/Cortex/prcomp|g" TMP_prcomp_Cortex.sh > prcomp_Cortex.sh
sed -e "s|ZZZZZ|log/Cortex_prcomp.out|g" prcomp_Cortex.sh > TMP_prcomp_Cortex.sh
sed -e "s|SSSSS|10|g" TMP_prcomp_Cortex.sh > prcomp_Cortex.sh
qsub prcomp_Cortex.sh
rm *prcomp_Cortex.sh

echo "Pancreas"
sed -e "s|XXXXX|../Data/Pancreas/Data.csv|g" Templates/prcomp_Template > TMP_prcomp_Pancreas.sh
mkdir -p ../Data/Pancreas/prcomp
sed -e "s|YYYYY|../Data/Pancreas/prcomp|g" TMP_prcomp_Pancreas.sh > prcomp_Pancreas.sh
sed -e "s|ZZZZZ|log/Pancreas_prcomp.out|g" prcomp_Pancreas.sh > TMP_prcomp_Pancreas.sh
sed -e "s|SSSSS|12|g" TMP_prcomp_Pancreas.sh > prcomp_Pancreas.sh
qsub prcomp_Pancreas.sh
rm *prcomp_Pancreas.sh
