#!/bin/bash

echo "Cortex"
sed -e "s|XXXXX|../Data/Cortex/Data.csv|g" Templates/rARPACK_Template > TMP_rARPACK_Cortex.sh
mkdir -p ../Data/Cortex/rARPACK
sed -e "s|YYYYY|../Data/Cortex/rARPACK|g" TMP_rARPACK_Cortex.sh > rARPACK_Cortex.sh
sed -e "s|ZZZZZ|log/Cortex_rARPACK.out|g" rARPACK_Cortex.sh > TMP_rARPACK_Cortex.sh
sed -e "s|SSSSS|10|g" TMP_rARPACK_Cortex.sh > rARPACK_Cortex.sh
qsub rARPACK_Cortex.sh
rm *rARPACK_Cortex.sh

echo "Pancreas"
sed -e "s|XXXXX|../Data/Pancreas/Data.csv|g" Templates/rARPACK_Template > TMP_rARPACK_Pancreas.sh
mkdir -p ../Data/Pancreas/rARPACK
sed -e "s|YYYYY|../Data/Pancreas/rARPACK|g" TMP_rARPACK_Pancreas.sh > rARPACK_Pancreas.sh
sed -e "s|ZZZZZ|log/Pancreas_rARPACK.out|g" rARPACK_Pancreas.sh > TMP_rARPACK_Pancreas.sh
sed -e "s|SSSSS|12|g" TMP_rARPACK_Pancreas.sh > rARPACK_Pancreas.sh
qsub rARPACK_Pancreas.sh
rm *rARPACK_Pancreas.sh
