#!/bin/bash

echo "Cortex"
sed -e "s|AAAAA|../Data/Cortex/Data.zst|g" Templates/Halko_2iter_Template > TMP_Halko_Cortex.sh
OUT="../Data/Cortex/Halko_2iter"
mkdir -p $OUT
sed -e "s|BBBBB|$OUT|g" TMP_Halko_Cortex.sh > Halko_Cortex.sh
sed -e "s|DDDDD|../Data/Cortex/Feature_LogMeans.csv|g" Halko_Cortex.sh > TMP_Halko_Cortex.sh
sed -e "s|EEEEE|10|g" TMP_Halko_Cortex.sh > Halko_Cortex.sh
LOG="log/Cortex_Halko_2iter.out"
sed -e "s|GGGGG|$LOG|g" Halko_Cortex.sh > TMP_Halko_Cortex.sh
mv TMP_Halko_Cortex.sh Halko_Cortex.sh
chmod +x Halko_Cortex.sh
qsub Halko_Cortex.sh
rm Halko_Cortex.sh

echo "Pancreas"
sed -e "s|AAAAA|../Data/Pancreas/Data.zst|g" Templates/Halko_2iter_Template > TMP_Halko_Pancreas.sh
OUT="../Data/Pancreas/Halko_2iter"
mkdir -p $OUT
sed -e "s|BBBBB|$OUT|g" TMP_Halko_Pancreas.sh > Halko_Pancreas.sh
sed -e "s|DDDDD|../Data/Pancreas/Feature_LogMeans.csv|g" Halko_Pancreas.sh > TMP_Halko_Pancreas.sh
sed -e "s|EEEEE|12|g" TMP_Halko_Pancreas.sh > Halko_Pancreas.sh
LOG="log/Pancreas_Halko_2iter.out"
sed -e "s|GGGGG|$LOG|g" Halko_Pancreas.sh > TMP_Halko_Pancreas.sh
mv TMP_Halko_Pancreas.sh Halko_Pancreas.sh
chmod +x Halko_Pancreas.sh
qsub Halko_Pancreas.sh
rm Halko_Pancreas.sh

echo "Brain"
sed -e "s|AAAAA|../Data/Brain/1M_neurons_filtered_gene_bc_matrices_h5.zst|g" Templates/Halko_2iter_Template > TMP_Halko_Brain.sh
OUT="../Data/Brain/Halko_2iter"
mkdir -p $OUT
sed -e "s|BBBBB|$OUT|g" TMP_Halko_Brain.sh > Halko_Brain.sh
sed -e "s|DDDDD|../Data/Brain/Feature_LogMeans.csv|g" Halko_Brain.sh > TMP_Halko_Brain.sh
sed -e "s|EEEEE|20|g" TMP_Halko_Brain.sh > Halko_Brain.sh
LOG="log/Brain_Halko_2iter.out"
sed -e "s|GGGGG|$LOG|g" Halko_Brain.sh > TMP_Halko_Brain.sh
mv TMP_Halko_Brain.sh Halko_Brain.sh
chmod +x Halko_Brain.sh
qsub Halko_Brain.sh
rm Halko_Brain.sh
