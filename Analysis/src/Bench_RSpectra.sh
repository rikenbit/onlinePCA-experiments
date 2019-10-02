#!/bin/bash

echo "PBMCs"
sed -e "s|XXXXX|../Data/PBMCs/Data.csv|g" Templates/RSpectra_Template > TMP_RSpectra_PBMCs.sh
mkdir -p ../Data/PBMCs/RSpectra
sed -e "s|YYYYY|../Data/PBMCs/RSpectra|g" TMP_RSpectra_PBMCs.sh > RSpectra_PBMCs.sh
sed -e "s|ZZZZZ|log/PBMCs_RSpectra.out|g" RSpectra_PBMCs.sh > TMP_RSpectra_PBMCs.sh
sed -e "s|SSSSS|3|g" TMP_RSpectra_PBMCs.sh > RSpectra_PBMCs.sh
qsub RSpectra_PBMCs.sh
rm *RSpectra_PBMCs.sh

echo "Pancreas"
sed -e "s|XXXXX|../Data/Pancreas/Data.csv|g" Templates/RSpectra_Template > TMP_RSpectra_Pancreas.sh
mkdir -p ../Data/Pancreas/RSpectra
sed -e "s|YYYYY|../Data/Pancreas/RSpectra|g" TMP_RSpectra_Pancreas.sh > RSpectra_Pancreas.sh
sed -e "s|ZZZZZ|log/Pancreas_RSpectra.out|g" RSpectra_Pancreas.sh > TMP_RSpectra_Pancreas.sh
sed -e "s|SSSSS|12|g" TMP_RSpectra_Pancreas.sh > RSpectra_Pancreas.sh
qsub RSpectra_Pancreas.sh
rm *RSpectra_Pancreas.sh
