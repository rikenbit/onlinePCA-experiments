#!/bin/bash

echo "PBMCs"
sed -e "s|XXXXX|../Data/PBMCs/Data.csv|g" Templates/rsvd_Template > TMP_rsvd_PBMCs.sh
mkdir -p ../Data/PBMCs/rsvd
sed -e "s|YYYYY|../Data/PBMCs/rsvd|g" TMP_rsvd_PBMCs.sh > rsvd_PBMCs.sh
sed -e "s|ZZZZZ|log/PBMCs_rsvd.out|g" rsvd_PBMCs.sh > TMP_rsvd_PBMCs.sh
sed -e "s|SSSSS|3|g" TMP_rsvd_PBMCs.sh > rsvd_PBMCs.sh
qsub rsvd_PBMCs.sh
rm *rsvd_PBMCs.sh

echo "Pancreas"
sed -e "s|XXXXX|../Data/Pancreas/Data.csv|g" Templates/rsvd_Template > TMP_rsvd_Pancreas.sh
mkdir -p ../Data/Pancreas/rsvd
sed -e "s|YYYYY|../Data/Pancreas/rsvd|g" TMP_rsvd_Pancreas.sh > rsvd_Pancreas.sh
sed -e "s|ZZZZZ|log/Pancreas_rsvd.out|g" rsvd_Pancreas.sh > TMP_rsvd_Pancreas.sh
sed -e "s|SSSSS|12|g" TMP_rsvd_Pancreas.sh > rsvd_Pancreas.sh
qsub rsvd_Pancreas.sh
rm *rsvd_Pancreas.sh
