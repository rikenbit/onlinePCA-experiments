#!/bin/bash

echo "Cortex"
sed -e "s|XXXXX|../Data/Cortex/Data.csv|g" Templates/rsvd_Template > TMP_rsvd_Cortex.sh
mkdir -p ../Data/Cortex/rsvd
sed -e "s|YYYYY|../Data/Cortex/rsvd|g" TMP_rsvd_Cortex.sh > rsvd_Cortex.sh
sed -e "s|ZZZZZ|log/Cortex_rsvd.out|g" rsvd_Cortex.sh > TMP_rsvd_Cortex.sh
sed -e "s|SSSSS|10|g" TMP_rsvd_Cortex.sh > rsvd_Cortex.sh
qsub rsvd_Cortex.sh
rm *rsvd_Cortex.sh

echo "Pancreas"
sed -e "s|XXXXX|../Data/Pancreas/Data.csv|g" Templates/rsvd_Template > TMP_rsvd_Pancreas.sh
mkdir -p ../Data/Pancreas/rsvd
sed -e "s|YYYYY|../Data/Pancreas/rsvd|g" TMP_rsvd_Pancreas.sh > rsvd_Pancreas.sh
sed -e "s|ZZZZZ|log/Pancreas_rsvd.out|g" rsvd_Pancreas.sh > TMP_rsvd_Pancreas.sh
sed -e "s|SSSSS|12|g" TMP_rsvd_Pancreas.sh > rsvd_Pancreas.sh
qsub rsvd_Pancreas.sh
rm *rsvd_Pancreas.sh
