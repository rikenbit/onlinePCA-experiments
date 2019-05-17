#!/bin/bash

echo "Cortex"
sed -e "s|XXXXX|../Data/Cortex/Data.csv|g" Templates/IRLB_Template > TMP_IRLB_Cortex.sh
mkdir -p ../Data/Cortex/IRLB
sed -e "s|YYYYY|../Data/Cortex/IRLB|g" TMP_IRLB_Cortex.sh > IRLB_Cortex.sh
sed -e "s|ZZZZZ|log/Cortex_IRLB.out|g" IRLB_Cortex.sh > TMP_IRLB_Cortex.sh
sed -e "s|SSSSS|10|g" TMP_IRLB_Cortex.sh > IRLB_Cortex.sh
qsub IRLB_Cortex.sh
rm *IRLB_Cortex.sh

echo "Pancreas"
sed -e "s|XXXXX|../Data/Pancreas/Data.csv|g" Templates/IRLB_Template > TMP_IRLB_Pancreas.sh
mkdir -p ../Data/Pancreas/IRLB
sed -e "s|YYYYY|../Data/Pancreas/IRLB|g" TMP_IRLB_Pancreas.sh > IRLB_Pancreas.sh
sed -e "s|ZZZZZ|log/Pancreas_IRLB.out|g" IRLB_Pancreas.sh > TMP_IRLB_Pancreas.sh
sed -e "s|SSSSS|12|g" TMP_IRLB_Pancreas.sh > IRLB_Pancreas.sh
qsub IRLB_Pancreas.sh
rm *IRLB_Pancreas.sh
