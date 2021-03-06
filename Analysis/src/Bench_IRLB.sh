#!/bin/bash

echo "PBMCs"
sed -e "s|XXXXX|../Data/PBMCs/Data.csv|g" Templates/IRLB_Template > TMP_IRLB_PBMCs.sh
mkdir -p ../Data/PBMCs/IRLB
sed -e "s|YYYYY|../Data/PBMCs/IRLB|g" TMP_IRLB_PBMCs.sh > IRLB_PBMCs.sh
sed -e "s|ZZZZZ|log/PBMCs_IRLB.out|g" IRLB_PBMCs.sh > TMP_IRLB_PBMCs.sh
sed -e "s|SSSSS|3|g" TMP_IRLB_PBMCs.sh > IRLB_PBMCs.sh
qsub IRLB_PBMCs.sh
rm *IRLB_PBMCs.sh

echo "Pancreas"
sed -e "s|XXXXX|../Data/Pancreas/Data.csv|g" Templates/IRLB_Template > TMP_IRLB_Pancreas.sh
mkdir -p ../Data/Pancreas/IRLB
sed -e "s|YYYYY|../Data/Pancreas/IRLB|g" TMP_IRLB_Pancreas.sh > IRLB_Pancreas.sh
sed -e "s|ZZZZZ|log/Pancreas_IRLB.out|g" IRLB_Pancreas.sh > TMP_IRLB_Pancreas.sh
sed -e "s|SSSSS|12|g" TMP_IRLB_Pancreas.sh > IRLB_Pancreas.sh
qsub IRLB_Pancreas.sh
rm *IRLB_Pancreas.sh
