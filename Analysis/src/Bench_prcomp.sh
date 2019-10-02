#!/bin/bash

echo "PBMCs"
sed -e "s|XXXXX|../Data/PBMCs/Data.csv|g" Templates/prcomp_Template > TMP_prcomp_PBMCs.sh
mkdir -p ../Data/PBMCs/prcomp
sed -e "s|YYYYY|../Data/PBMCs/prcomp|g" TMP_prcomp_PBMCs.sh > prcomp_PBMCs.sh
sed -e "s|ZZZZZ|log/PBMCs_prcomp.out|g" prcomp_PBMCs.sh > TMP_prcomp_PBMCs.sh
sed -e "s|SSSSS|3|g" TMP_prcomp_PBMCs.sh > prcomp_PBMCs.sh
qsub prcomp_PBMCs.sh
rm *prcomp_PBMCs.sh

echo "Pancreas"
sed -e "s|XXXXX|../Data/Pancreas/Data.csv|g" Templates/prcomp_Template > TMP_prcomp_Pancreas.sh
mkdir -p ../Data/Pancreas/prcomp
sed -e "s|YYYYY|../Data/Pancreas/prcomp|g" TMP_prcomp_Pancreas.sh > prcomp_Pancreas.sh
sed -e "s|ZZZZZ|log/Pancreas_prcomp.out|g" prcomp_Pancreas.sh > TMP_prcomp_Pancreas.sh
sed -e "s|SSSSS|12|g" TMP_prcomp_Pancreas.sh > prcomp_Pancreas.sh
qsub prcomp_Pancreas.sh
rm *prcomp_Pancreas.sh
