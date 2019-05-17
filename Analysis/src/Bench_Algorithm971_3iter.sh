#!/bin/bash

echo "Cortex"
sed -e "s|AAAAA|../Data/Cortex/Data.zst|g" Templates/Algorithm971_3iter_Template > TMP_Algorithm971_Cortex.sh
OUT="../Data/Cortex/Algorithm971_3iter"
mkdir -p $OUT
sed -e "s|BBBBB|$OUT|g" TMP_Algorithm971_Cortex.sh > Algorithm971_Cortex.sh
sed -e "s|DDDDD|../Data/Cortex/Feature_LogMeans.csv|g" Algorithm971_Cortex.sh > TMP_Algorithm971_Cortex.sh
sed -e "s|EEEEE|10|g" TMP_Algorithm971_Cortex.sh > Algorithm971_Cortex.sh
LOG="log/Cortex_Algorithm971_3iter.out"
sed -e "s|GGGGG|$LOG|g" Algorithm971_Cortex.sh > TMP_Algorithm971_Cortex.sh
mv TMP_Algorithm971_Cortex.sh Algorithm971_Cortex.sh
chmod +x Algorithm971_Cortex.sh
qsub Algorithm971_Cortex.sh
rm Algorithm971_Cortex.sh

echo "Pancreas"
sed -e "s|AAAAA|../Data/Pancreas/Data.zst|g" Templates/Algorithm971_3iter_Template > TMP_Algorithm971_Pancreas.sh
OUT="../Data/Pancreas/Algorithm971_3iter"
mkdir -p $OUT
sed -e "s|BBBBB|$OUT|g" TMP_Algorithm971_Pancreas.sh > Algorithm971_Pancreas.sh
sed -e "s|DDDDD|../Data/Pancreas/Feature_LogMeans.csv|g" Algorithm971_Pancreas.sh > TMP_Algorithm971_Pancreas.sh
sed -e "s|EEEEE|12|g" TMP_Algorithm971_Pancreas.sh > Algorithm971_Pancreas.sh
LOG="log/Pancreas_Algorithm971_3iter.out"
sed -e "s|GGGGG|$LOG|g" Algorithm971_Pancreas.sh > TMP_Algorithm971_Pancreas.sh
mv TMP_Algorithm971_Pancreas.sh Algorithm971_Pancreas.sh
chmod +x Algorithm971_Pancreas.sh
qsub Algorithm971_Pancreas.sh
rm Algorithm971_Pancreas.sh

echo "Brain"
sed -e "s|AAAAA|../Data/Brain/1M_neurons_filtered_gene_bc_matrices_h5.zst|g" Templates/Algorithm971_3iter_Template > TMP_Algorithm971_Brain.sh
OUT="../Data/Brain/Algorithm971_3iter"
mkdir -p $OUT
sed -e "s|BBBBB|$OUT|g" TMP_Algorithm971_Brain.sh > Algorithm971_Brain.sh
sed -e "s|DDDDD|../Data/Brain/Feature_LogMeans.csv|g" Algorithm971_Brain.sh > TMP_Algorithm971_Brain.sh
sed -e "s|EEEEE|20|g" TMP_Algorithm971_Brain.sh > Algorithm971_Brain.sh
LOG="log/Brain_Algorithm971_3iter.out"
sed -e "s|GGGGG|$LOG|g" Algorithm971_Brain.sh > TMP_Algorithm971_Brain.sh
mv TMP_Algorithm971_Brain.sh Algorithm971_Brain.sh
chmod +x Algorithm971_Brain.sh
qsub Algorithm971_Brain.sh
rm Algorithm971_Brain.sh
