#!/bin/bash

echo "Cortex"
sed -e "s|XXXXX|../Data/Cortex/Data.csv|g" Templates/RSpectra_Template > TMP_RSpectra_Cortex.sh
mkdir -p ../Data/Cortex/RSpectra
sed -e "s|YYYYY|../Data/Cortex/RSpectra|g" TMP_RSpectra_Cortex.sh > RSpectra_Cortex.sh
sed -e "s|ZZZZZ|log/Cortex_RSpectra.out|g" RSpectra_Cortex.sh > TMP_RSpectra_Cortex.sh
sed -e "s|SSSSS|10|g" TMP_RSpectra_Cortex.sh > RSpectra_Cortex.sh
qsub RSpectra_Cortex.sh
rm *RSpectra_Cortex.sh

echo "Pancreas"
sed -e "s|XXXXX|../Data/Pancreas/Data.csv|g" Templates/RSpectra_Template > TMP_RSpectra_Pancreas.sh
mkdir -p ../Data/Pancreas/RSpectra
sed -e "s|YYYYY|../Data/Pancreas/RSpectra|g" TMP_RSpectra_Pancreas.sh > RSpectra_Pancreas.sh
sed -e "s|ZZZZZ|log/Pancreas_RSpectra.out|g" RSpectra_Pancreas.sh > TMP_RSpectra_Pancreas.sh
sed -e "s|SSSSS|12|g" TMP_RSpectra_Pancreas.sh > RSpectra_Pancreas.sh
qsub RSpectra_Pancreas.sh
rm *RSpectra_Pancreas.sh
