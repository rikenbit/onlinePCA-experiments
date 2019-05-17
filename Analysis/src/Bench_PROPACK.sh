#!/bin/bash

echo "Cortex"
sed -e "s|XXXXX|../Data/Cortex/Data.csv|g" Templates/PROPACK_Template > TMP_PROPACK_Cortex.sh
mkdir -p ../Data/Cortex/PROPACK
sed -e "s|YYYYY|../Data/Cortex/PROPACK|g" TMP_PROPACK_Cortex.sh > PROPACK_Cortex.sh
sed -e "s|ZZZZZ|log/Cortex_PROPACK.out|g" PROPACK_Cortex.sh > TMP_PROPACK_Cortex.sh
sed -e "s|SSSSS|10|g" TMP_PROPACK_Cortex.sh > PROPACK_Cortex.sh
qsub PROPACK_Cortex.sh
rm *PROPACK_Cortex.sh

echo "Pancreas"
sed -e "s|XXXXX|../Data/Pancreas/Data.csv|g" Templates/PROPACK_Template > TMP_PROPACK_Pancreas.sh
mkdir -p ../Data/Pancreas/PROPACK
sed -e "s|YYYYY|../Data/Pancreas/PROPACK|g" TMP_PROPACK_Pancreas.sh > PROPACK_Pancreas.sh
sed -e "s|ZZZZZ|log/Pancreas_PROPACK.out|g" PROPACK_Pancreas.sh > TMP_PROPACK_Pancreas.sh
sed -e "s|SSSSS|12|g" TMP_PROPACK_Pancreas.sh > PROPACK_Pancreas.sh
qsub PROPACK_Pancreas.sh
rm *PROPACK_Pancreas.sh
