#!/bin/bash

echo "PBMCs"
sed -e "s|XXXXX|../Data/PBMCs/Data.csv|g" Templates/PROPACK_Template > TMP_PROPACK_PBMCs.sh
mkdir -p ../Data/PBMCs/PROPACK
sed -e "s|YYYYY|../Data/PBMCs/PROPACK|g" TMP_PROPACK_PBMCs.sh > PROPACK_PBMCs.sh
sed -e "s|ZZZZZ|log/PBMCs_PROPACK.out|g" PROPACK_PBMCs.sh > TMP_PROPACK_PBMCs.sh
sed -e "s|SSSSS|3|g" TMP_PROPACK_PBMCs.sh > PROPACK_PBMCs.sh
qsub PROPACK_PBMCs.sh
rm *PROPACK_PBMCs.sh

echo "Pancreas"
sed -e "s|XXXXX|../Data/Pancreas/Data.csv|g" Templates/PROPACK_Template > TMP_PROPACK_Pancreas.sh
mkdir -p ../Data/Pancreas/PROPACK
sed -e "s|YYYYY|../Data/Pancreas/PROPACK|g" TMP_PROPACK_Pancreas.sh > PROPACK_Pancreas.sh
sed -e "s|ZZZZZ|log/Pancreas_PROPACK.out|g" PROPACK_Pancreas.sh > TMP_PROPACK_Pancreas.sh
sed -e "s|SSSSS|12|g" TMP_PROPACK_Pancreas.sh > PROPACK_Pancreas.sh
qsub PROPACK_Pancreas.sh
rm *PROPACK_Pancreas.sh
