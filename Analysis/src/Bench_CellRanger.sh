#!/bin/bash

echo "PBMCs"
sed -e "s|XXXXX|../Data/PBMCs/Data.csv|g" Templates/CellRanger_Template > TMP_CellRanger_PBMCs.sh
mkdir -p ../Data/PBMCs/CellRanger
sed -e "s|YYYYY|../Data/PBMCs/CellRanger|g" TMP_CellRanger_PBMCs.sh > CellRanger_PBMCs.sh
sed -e "s|ZZZZZ|log/PBMCs_CellRanger.out|g" CellRanger_PBMCs.sh > TMP_CellRanger_PBMCs.sh
sed -e "s|SSSSS|3|g" TMP_CellRanger_PBMCs.sh > CellRanger_PBMCs.sh
qsub CellRanger_PBMCs.sh
rm *CellRanger_PBMCs.sh

echo "Pancreas"
sed -e "s|XXXXX|../Data/Pancreas/Data.csv|g" Templates/CellRanger_Template > TMP_CellRanger_Pancreas.sh
mkdir -p ../Data/Pancreas/CellRanger
sed -e "s|YYYYY|../Data/Pancreas/CellRanger|g" TMP_CellRanger_Pancreas.sh > CellRanger_Pancreas.sh
sed -e "s|ZZZZZ|log/Pancreas_CellRanger.out|g" CellRanger_Pancreas.sh > TMP_CellRanger_Pancreas.sh
sed -e "s|SSSSS|12|g" TMP_CellRanger_Pancreas.sh > CellRanger_Pancreas.sh
qsub CellRanger_Pancreas.sh
rm *CellRanger_Pancreas.sh
