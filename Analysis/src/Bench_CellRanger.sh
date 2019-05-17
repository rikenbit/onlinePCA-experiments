#!/bin/bash

echo "Cortex"
sed -e "s|XXXXX|../Data/Cortex/Data.csv|g" Templates/CellRanger_Template > TMP_CellRanger_Cortex.sh
mkdir -p ../Data/Cortex/CellRanger
sed -e "s|YYYYY|../Data/Cortex/CellRanger|g" TMP_CellRanger_Cortex.sh > CellRanger_Cortex.sh
sed -e "s|ZZZZZ|log/Cortex_CellRanger.out|g" CellRanger_Cortex.sh > TMP_CellRanger_Cortex.sh
sed -e "s|SSSSS|10|g" TMP_CellRanger_Cortex.sh > CellRanger_Cortex.sh
qsub CellRanger_Cortex.sh
rm *CellRanger_Cortex.sh

echo "Pancreas"
sed -e "s|XXXXX|../Data/Pancreas/Data.csv|g" Templates/CellRanger_Template > TMP_CellRanger_Pancreas.sh
mkdir -p ../Data/Pancreas/CellRanger
sed -e "s|YYYYY|../Data/Pancreas/CellRanger|g" TMP_CellRanger_Pancreas.sh > CellRanger_Pancreas.sh
sed -e "s|ZZZZZ|log/Pancreas_CellRanger.out|g" CellRanger_Pancreas.sh > TMP_CellRanger_Pancreas.sh
sed -e "s|SSSSS|12|g" TMP_CellRanger_Pancreas.sh > CellRanger_Pancreas.sh
qsub CellRanger_Pancreas.sh
rm *CellRanger_Pancreas.sh
